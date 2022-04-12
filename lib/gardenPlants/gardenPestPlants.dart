import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_app/data/database.dart';


// ignore: must_be_immutable
class FruitPlantDesing extends StatelessWidget {
  var id;
  FruitPlantDesing({Key key, this.id: int}) : super(key: key,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${meyve[id].anaBaslik}'),
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
            margin: const EdgeInsets.all(20),
            child: ListView(children: <Widget>[
              Container(
                  child: Center(
                      child: Text('${meyve[id].tanitimBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text(
                    '${meyve[id].tanitimicerik}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:
                            MediaQuery.of(context).size.height * 0.001 * 25),
                  ))),
              Container(
                  child: Center(
                      child: Text('${meyve[id].zararBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text('${meyve[id].zararicerik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  child: Center(
                      child: Text('${meyve[id].mucadeleBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text('${meyve[id].mucadeleicerik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  child: Center(
                      child: Wrap(
                direction: Axis.horizontal,
                spacing: 10,
                children: <Widget>[
                  Image.asset(
                    '${meyve[id].resim}',
                    width: (MediaQuery.of(context).size.width / 3),
                    height: (MediaQuery.of(context).size.width / 3),
                  ),
                ],
              ))),
            ])));
  }
}

// ignore: must_be_immutable
class VegetablesPlantDesing extends StatelessWidget {
  var id;
  VegetablesPlantDesing({Key key, this.id: int}) : super(key: key,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${sebze[id].anaBaslik}'),
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
            margin: const EdgeInsets.all(20),
            child: ListView(children: <Widget>[
              Container(
                  child: Center(
                      child: Text('${sebze[id].tanitimBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text(
                    '${sebze[id].tanitimicerik}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:
                            MediaQuery.of(context).size.height * 0.001 * 25),
                  ))),
              Container(
                  child: Center(
                      child: Text('${sebze[id].zararBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text('${sebze[id].zararicerik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  child: Center(
                      child: Text('${sebze[id].mucadeleBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text('${sebze[id].mucadeleicerik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  child: Center(
                      child: Wrap(
                direction: Axis.horizontal,
                spacing: 10,
                children: <Widget>[
                  Image.asset(
                    '${sebze[id].resim}',
                    width: (MediaQuery.of(context).size.width / 3),
                    height: (MediaQuery.of(context).size.width / 3),
                  ),
                ],
              ))),
            ])));
  }
}

// ignore: must_be_immutable
class VineyardPlantDesing extends StatelessWidget {
  var id;
  VineyardPlantDesing({Key key, this.id: int}) : super(key: key,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${bag[id].anaBaslik}'),
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
            margin: const EdgeInsets.all(20),
            child: ListView(children: <Widget>[
              Container(
                  child: Center(
                      child: Text('${bag[id].tanitimBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text(
                    '${bag[id].tanitimicerik}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:
                            MediaQuery.of(context).size.height * 0.001 * 25),
                  ))),
              Container(
                  child: Center(
                      child: Text('${bag[id].zararBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text('${bag[id].zararicerik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  child: Center(
                      child: Text('${bag[id].mucadeleBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text('${bag[id].mucadeleicerik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  child: Center(
                      child: Wrap(
                direction: Axis.horizontal,
                spacing: 10,
                children: <Widget>[
                  Image.asset(
                    '${bag[id].resim}',
                    width: (MediaQuery.of(context).size.width / 3),
                    height: (MediaQuery.of(context).size.width / 3),
                  ),
                ],
              ))),
            ])));
  }
}