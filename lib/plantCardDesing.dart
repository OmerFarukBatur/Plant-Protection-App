import 'dart:ui';

import 'package:flutter/material.dart';
import 'Plant.dart';

class PlantInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tarım Zararlıları'),
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
            child: ListView(children: <Widget>[
          Card(
              child: Container(
              decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFFF06292),
                  const Color(0xFF9575CD),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: ListTile(
              title: Text('Tarla Zararlıları',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height*0.001*25,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center),
              //subtitle: Text(''),
              //isThreeLine: true,
              dense: true,
            ),
          )),
          Hububat(),
          Endustri(),
          Yem(),
          Card(
              child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF80DEEA),
                  const Color(0xFF00BCD4),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: ListTile(
              title: Text('Bahçe Zararlıları',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height*0.001*25,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center),
              //subtitle: Text(''),
              //isThreeLine: true,
              dense: true,
            ),
          )),
          Meyve(),Sebze(),Bag()
        ])));
  }
}

class Hububat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFF9A825),
            const Color(0xFFF57F17),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: ListTile(
        leading: Image.asset('assets/icon/hububat.ico',width: 100,height: 50,),
        title: Text('Hububat Zararlıları',style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.001*25,fontWeight: FontWeight.bold ,color:Colors.black),),
        subtitle: Text('Buğday, arpa, yulaf, çavdar,mısır,biber, patlıcan, fasulye, patates, kenevir, ayçiçeği, krizantem, yıldızçiçeği,su kamışı, kamış, çeltik, kanyaş, hasır otu ve glayöl gibi bitkilere zarar vermektedirler.'),
        isThreeLine: true,
        dense: false,
        onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>CerealsPlantInfo()));} ,
      ),
    ));
  }
}

class Endustri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFFF7043),
            const Color(0xFFFFAB91),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: ListTile(
        leading: Image.asset('assets/icon/endustri.ico',width: 100,height: 50,),
        title: Text('Endüstri Bitkileri Zararlıları',style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.001*25,fontWeight: FontWeight.bold ,color:Colors.black),),
        subtitle: Text(
            'Pancar,ıspanak,patates,pamuk, kabak, kavun, karpuz, domates, biber, patlıcan, soya, yerfıstığı, gül, yonca, maydanoz,tütün,bamya,yonca, soğan, sarımsak, bezelye,salatalık, mısır, baklagiller ve süs bitkileri gibi bitkilere zarar vermektedir.'),
        isThreeLine: true,
        onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>IndustryPlantInfo()));} ,
      ),
    ));
  }
}

class Yem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFF06292),
            const Color(0xFF3D5AFE),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: ListTile(
        leading: Image.asset('assets/icon/yem.ico',width: 100,height: 50,),
        title: Text('Yem Bitkileri Zararlıları',style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.001*25,fontWeight: FontWeight.bold ,color:Colors.black),),
        subtitle: Text('Yonca,fiğ, tırfıl, burçak, üçgül, soya fasulyesi, mısır, pamuk, bağ, tütün, patates, ayçiçeği, susam, pancar, patlıcan, biber, bamya, kabak, nane, kavun ve karpuz gibi bitkilere zarar verirler.'),
        isThreeLine: true,
        onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>ForagePlantInfo()));} ,
      ),
    ));
  }
}
 
class Meyve extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFFBC02D),
            const Color(0xFFEF5350),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: ListTile(
        leading: Image.asset('assets/icon/meyve.ico',width: 100,height: 50,),
        title: Text('Meyve Zararlıları',style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.001*25,fontWeight: FontWeight.bold ,color:Colors.black),),
        subtitle: Text('Dut, şeftali, kayısı, badem, ceviz, elma, erik, kiraz ,kavak, söğüt, gül, leylak, sardunya, at kestanesi, turunçgiller, zeytin, yeni dünya, bağ, kestane, armut, muşmula, ayva, nar, defne, çınar, ceviz, fındık, asma, limon, kamelya, incir, turunçgil, mersin, zakkum, ılgın, gül, yalancı biber ve antep fıstığı gibi bitkilere zarar verilmektedir. '),
        isThreeLine: true,
        onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>FruitPlantInfo()));} ,
      ),
    ));
  }
}

class Sebze extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFC5CAE9),
            const Color(0xFF5C6BC0),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: ListTile(
        leading: Image.asset('assets/icon/sebze.ico',width: 100,height: 50,),
        title: Text('Sebze Zararlıları',style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.001*25,fontWeight: FontWeight.bold ,color:Colors.black),),
        subtitle: Text('Pamuk, domates, biber, patlıcan, bamya, baklagiller, süs bitkileri, mısır, tütün, kavun, karpuz, lahana, patates, şekerpancarı, keten, kenevir, karnabahar, turp, şalgam, havuç, ıspanak, marul, fasulye, mercimek, soğan ve sarımsak gibi bitkilere zarar verilmektedir.'),
        isThreeLine: true,
        onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>VegetablesPlantInfo()));} ,
      ),
    ));
  }
}

class Bag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFBDBDBD),
            const Color(0xFF616161),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: ListTile(
        leading: Image.asset('assets/icon/bag.ico',width: 100,height: 50,),
        title: Text('Bağ Zararlıları',style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.001*25,fontWeight: FontWeight.bold ,color:Colors.black),),
        subtitle: Text('Bağ, defne, orman asması ve böğürtlen gibi bitkilere zarar verilmektedir.'),
        isThreeLine: true,
        onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>VineyardPlantInfo()));} ,
      ),
    ));
  }
}
 