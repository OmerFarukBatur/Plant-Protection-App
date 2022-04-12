import 'dart:io';
import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:my_app/fieldPlants/fieldPestPlants.dart.dart';
import 'gardenPlants/gardenPestPlants.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';

import 'package:image/image.dart' as img;

class Statick extends StatefulWidget {
  @override
  _Statick createState() => _Statick();
}

class _Statick extends State<Statick> {
  File _image;
  List _recognitions;
  bool _busy;
  String tahmiAd = '';
  double tahminDeger = 0.0;
  double sayi = 0.0;
  int yonlendirme;
  final picker = ImagePicker();

  loadTfModel() async {
    await Tflite.loadModel(
      model: "assets/models/Model_ilkSonuc_150x150x3.tflite",
      labels: "assets/models/labels.txt",
    );
  }

  detectObject(File yeniImage) async {
    var image = img.decodeJpg(File(yeniImage.path).readAsBytesSync());
    img.Image resizedImage = img.copyResize(image, height: 150, width: 150);
    var recognitions = await Tflite.runModelOnBinary(
        binary: imageToByteListFloat32(resizedImage, 150, 0.0, 1.0),
        numResults: 1,
        threshold: 0.4,
        asynch: true);

    setState(() {
      _recognitions = recognitions;
      if (_recognitions != null) {
        for (var i = 0; i < _recognitions.length; i++) {
          sayi = _recognitions[i]['confidence'] * 100;
          if (sayi > tahminDeger) {
            tahminDeger = sayi;
            tahmiAd = _recognitions[i]['label'];
            yonlendirme = _recognitions[i]['index'];
          }
        }
      }
      //print(_recognitions);
    });
  }

  Uint8List imageToByteListFloat32(
      img.Image image, int inputSize, double mean, double std) {
    var convertedBytes = Float32List(1 * inputSize * inputSize * 3);
    var buffer = Float32List.view(convertedBytes.buffer);
    int pixelIndex = 0;
    for (var i = 0; i < inputSize; i++) {
      for (var j = 0; j < inputSize; j++) {
        var pixel = image.getPixel(j, i);
        buffer[pixelIndex++] = (img.getRed(pixel) - mean) / std;
        buffer[pixelIndex++] = (img.getGreen(pixel) - mean) / std;
        buffer[pixelIndex++] = (img.getBlue(pixel) - mean) / std;
      }
    }
    return convertedBytes.buffer.asUint8List();
  }

  /*Uint8List imageToByteListUint8(img.Image image, int inputSize) {
    var convertedBytes = Uint8List(1 * inputSize * inputSize * 3);
    var buffer = Uint8List.view(convertedBytes.buffer);
    int pixelIndex = 0;
    for (var i = 0; i < inputSize; i++) {
      for (var j = 0; j < inputSize; j++) {
        var pixel = image.getPixel(j, i);
        buffer[pixelIndex++] = img.getRed(pixel);
        buffer[pixelIndex++] = img.getGreen(pixel);
        buffer[pixelIndex++] = img.getBlue(pixel);
      }
    }
    return convertedBytes.buffer.asUint8List();
  }*/

  @override
  void initState() {
    super.initState();
    _busy = true;
    loadTfModel().then((val) {
      {
        setState(() {
          _busy = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> stackChildren = [];

    stackChildren.add(Positioned(
      child: _image == null
          ? Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Lütfen Bir Görsel Seçiniz..",style: TextStyle(
                      fontWeight: FontWeight.bold,color: Colors.black,
                      fontSize:
                          MediaQuery.of(context).size.height * 0.001 * 25),),
                ],
              ),
            )
          : Container(child: Image.file(_image,width:300 ,height: 300,)),
    ));

    if (_busy) {
      stackChildren.add(Center(
        child: CircularProgressIndicator(),
      ));
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Zararlı Canlı Tespiti",style: TextStyle(
                      fontWeight: FontWeight.bold,color: Colors.black,)),
          backgroundColor: Colors.white,
          centerTitle: true,
          flexibleSpace: Container(
              decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFF69F0AE),
                const Color(0xFF00C853),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          )),
        ),
        backgroundColor: Colors.white,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              heroTag: "Fltbtn2",
              child: Icon(Icons.camera_alt),
              onPressed: getImageFromCamera,
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              heroTag: "Fltbtn1",
              child: Icon(Icons.photo),
              onPressed: getImageFromGallery,
            ),
          ],
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(50),
            child: ListView(children: <Widget>[
              Stack(
                children: stackChildren,
                alignment: Alignment.center,
              ),
              ListTile(
                leading: Text(
                  'Tahmini Zararlı Adı: ${tahmiAd.toString()}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,color: Colors.black,
                      fontSize:
                          MediaQuery.of(context).size.height * 0.001 * 25),
                ),
              ),
              ListTile(
                leading: Text(
                  'Yüzde Oranı: %${tahminDeger.toString()}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,color: Colors.black,
                      fontSize:
                          MediaQuery.of(context).size.height * 0.001 * 25),
                ),
              ),
              ElevatedButton(
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => onPressed(yonlendirme)))
                },
                child: Text('${tahmiAd.toString()} Zararlısı Önerileri', style: TextStyle(
                      fontWeight: FontWeight.bold,color: Colors.black,
                      fontSize:
                          MediaQuery.of(context).size.height * 0.001 * 25),),
              ),
            ]),
          ),
        ));
  }

  onPressed(int yonlendirme) {
    if (_recognitions != null) {
      if (yonlendirme != null) {
        switch (yonlendirme) {
          case 0: //'Badem İç Kurdu':
            return FruitPlantDesing(id: 2);
            break;
          case 1: //'THRIPSLER':
            return EndustriPestDesing(id: 4);
            break;
          case 2: //'Kırmızı Örümcekler(Akarlar)':
            return NullPestDesing(id: 0);
            break;
          case 3: //'Yeşil Kurt':
            return EndustriPestDesing(id: 5);
            break;
          case 4: //'Armut Kaplanı':
            return NullPestDesing(id: 1);
            break;
          case 5: //'Ekin Bambul Böcegi':
            return FieldPestDesing(id: 3);
            break;
          case 6: //'Tel Kurdu':
            return NullPestDesing(id: 2);
            break;
          case 7: //'Amerikan Beyaz Kelebeği':
            return NullPestDesing(id: 3);
            break;
          case 8: //'Teke Böcekleri':
            return NullPestDesing(id: 4);
            break;
          case 9: //'Yaprak Bitleri':
            return VineyardPlantDesing(id: 2);
            break;
          case 10: //'Koşnil':
            return FruitPlantDesing(id: 0);
            break;
          case 11: //'Bakla Zınnı':
            return NullPestDesing(id: 5);
            break;
          case 12: //'Bağ Yaprak Uyuzu':
            return VineyardPlantDesing(id: 2);
            break;
          case 13: //'Beyaz Sinek':
            return EndustriPestDesing(id: 2);
            break;
          case 14: //'Ağaç Sarı Kurdu':
            return NullPestDesing(id: 6);
            break;
          case 15: //'Ağaç Kızıl Kurdu':
            return NullPestDesing(id: 7);
            break;
          case 16: //'Akdeniz Meyve Sineği':
            return NullPestDesing(id: 8);
            break;
          case 17: //'Ağ Kurdu':
            return FruitPlantDesing(id: 3);
            break;
          case 18: //'Dana Burnu':
            return NullPestDesing(id: 9);
            break;
          case 19: //'ALTERNARIA':
            return NullPestDesing(id: 10);
            break;
          default:
            return Statick();
            break;
        }
      }
    } else {
      return Statick();
    }
  }

  Future getImageFromCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print("Görsel Seçilmedi");
      }
    });

    detectObject(_image);
  }

  Future getImageFromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print("Görsel Seçilmedi");
      }
    });

    detectObject(_image);
  }
}
