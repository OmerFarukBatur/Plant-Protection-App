import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_app/data/database.dart';
import 'fieldPlants/fieldPestPlants.dart.dart';
import 'gardenPlants/gardenPestPlants.dart';
import 'dart:math';

List<int>randomList=[];
var colorOne;
var colorTwo;
var random=Random();
var sayi;
// ignore: non_constant_identifier_names
void  RandomVariable() {  
    while (randomList.length<10) {
      sayi=random.nextInt(randomColor.length);
      // ignore: unrelated_type_equality_checks
      if (randomList.contains(sayi)==false ) {
        randomList.add(sayi);
      }    
    }   

}

/////////////// tarla /////////////////////////////////////////
class CerealsPlantInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hububat Zararlıları'),
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
        body: Container(
            child: ListView.builder(
                itemCount: hububat.length,
                itemBuilder: (context, i) {
                  return InkWell(
                    child: Card(
                        child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(randomColor[i].nameColorOne),
                            Color(randomColor[i].nameColorTwo),
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp,
                        ),
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          '${hububat[i].resim}',
                          width: 100,
                          height: 50,
                        ),
                        title: Text(
                          '${hububat[i].anaBaslik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        subtitle: Text('${hububat[i].extraInfo}',textAlign: TextAlign.justify),
                        isThreeLine: true,
                        dense: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      FieldPestDesing(id: i,)));
                        },
                      ),
                    )),
                  );
                })));
  }
}

class IndustryPlantInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Endüstri Bitkileri Zararlıları'),
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
        body: Container(
            child: ListView.builder(
                itemCount: endustri.length,
                itemBuilder: (context, j) {
                  return InkWell(
                    child: Card(
                        child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(randomColor[j].nameColorOne),
                            Color(randomColor[j].nameColorTwo),
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp,
                        ),
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          '${endustri[j].resim}',
                          width: 100,
                          height: 50,
                        ),
                        title: Text(
                          '${endustri[j].anaBaslik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        subtitle: Text('${endustri[j].extraInfo}',textAlign: TextAlign.justify),
                        isThreeLine: true,
                        dense: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      EndustriPestDesing(id: j)));
                        },
                      ),
                    )),
                  );
                })));
  }
}

class ForagePlantInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Yem Bitkileri Zararlıları'),
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
        body: Container(
            child: ListView.builder(
                itemCount: yem.length,
                itemBuilder: (context, k) {
                  return InkWell(
                    child: Card(
                        child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                             Color(randomColor[k].nameColorOne),
                             Color(randomColor[k].nameColorTwo),
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp,
                        ),
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          '${yem[k].resim}',
                          width: 100,
                          height: 50,
                        ),
                        title: Text(
                          '${yem[k].anaBaslik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        subtitle: Text('${endustri[k].extraInfo}',textAlign: TextAlign.justify),
                        isThreeLine: true,
                        dense: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ForagePestDesing(id: k)));
                        },
                      ),
                    )),
                  );
                })));
  }
}

//////////////////// bahçe /////////////////////////////////

class FruitPlantInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Meyve Zararlıları'),
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
        body: Container(
            child: ListView.builder(
                itemCount: meyve.length,
                itemBuilder: (context, i) {
                  return InkWell(
                    child: Card(
                        child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                             Color(randomColor[i].nameColorOne),
                             Color(randomColor[i].nameColorTwo),
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp,
                        ),
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          '${meyve[i].resim}',
                          width: 100,
                          height: 50,
                        ),
                        title: Text(
                          '${meyve[i].anaBaslik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        subtitle: Text('${meyve[i].extraInfo}',textAlign: TextAlign.justify),
                        isThreeLine: true,
                        dense: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      FruitPlantDesing(id: i)));
                        },
                      ),
                    )),
                  );
                })));
  }
}

class VegetablesPlantInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sebze Zararlıları'),
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
        body: Container(
            child: ListView.builder(
                itemCount: sebze.length,
                itemBuilder: (context, i) {
                  return InkWell(
                    child: Card(
                        child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                             Color(randomColor[i].nameColorOne),
                             Color(randomColor[i].nameColorTwo),
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp,
                        ),
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          '${sebze[i].resim}',
                          width: 100,
                          height: 50,
                        ),
                        title: Text(
                          '${sebze[i].anaBaslik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        subtitle: Text('${sebze[i].extraInfo}',textAlign: TextAlign.justify),
                        isThreeLine: true,
                        dense: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      VegetablesPlantDesing(id: i,)));
                        },
                      ),
                    )),
                  );
                })));
  }
}

class VineyardPlantInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bağ Zararlıları'),
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
        body: Container(
            child: ListView.builder(
                itemCount: bag.length,
                itemBuilder: (context, i) {
                  return InkWell(
                    child: Card(
                        child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                             Color(randomColor[i].nameColorOne),
                             Color(randomColor[i].nameColorTwo),
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp,
                        ),
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          '${bag[i].resim}',
                          width: 100,
                          height: 50,
                        ),
                        title: Text(
                          '${bag[i].anaBaslik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        subtitle: Text('${bag[i].extraInfo}',textAlign: TextAlign.justify),
                        isThreeLine: true,
                        dense: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      VineyardPlantDesing(id: i,)));
                        },
                      ),
                    )),
                  );
                })));
  }
}



