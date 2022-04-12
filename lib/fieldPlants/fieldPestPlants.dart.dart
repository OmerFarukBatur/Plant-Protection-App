import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_app/data/database.dart';

// ignore: must_be_immutable
class FieldPestDesing extends StatelessWidget {
  var id;
  FieldPestDesing({Key key, this.id: int}) : super(key: key,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${hububat[id].anaBaslik}'),
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
                      child: Text('${hububat[id].tanitimBaslik}',
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
                    '${hububat[id].tanitimicerik}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:
                            MediaQuery.of(context).size.height * 0.001 * 25),
                  ))),
              Container(
                  child: Center(
                      child: Text('${hububat[id].zararBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text('${hububat[id].zararicerik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  child: Center(
                      child: Text('${hububat[id].mucadeleBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text('${hububat[id].mucadeleicerik}',
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
                    '${hububat[id].resim}',
                    width: (MediaQuery.of(context).size.width / 3),
                    height: (MediaQuery.of(context).size.width / 3),
                  ),
                ],
              ))),
            ])));
  }
}

// ignore: must_be_immutable
class EndustriPestDesing extends StatelessWidget {
  var id;
  EndustriPestDesing({Key key, this.id: int}) : super(key: key,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${endustri[id].anaBaslik}'),
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
                      child: Text('${endustri[id].tanitimBaslik}',
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
                    '${endustri[id].tanitimicerik}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:
                            MediaQuery.of(context).size.height * 0.001 * 25),
                  ))),
              Container(
                  child: Center(
                      child: Text('${endustri[id].zararBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text('${endustri[id].zararicerik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  child: Center(
                      child: Text('${endustri[id].mucadeleBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text('${endustri[id].mucadeleicerik}',
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
                    '${endustri[id].resim}',
                    width: (MediaQuery.of(context).size.width / 3),
                    height: (MediaQuery.of(context).size.width / 3),
                  ),
                ],
              ))),
            ])));
  }
}

// ignore: must_be_immutable
class ForagePestDesing extends StatelessWidget {
  var id;
  ForagePestDesing({Key key, this.id: int}) : super(key: key,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${yem[id].anaBaslik}'),
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
                      child: Text('${yem[id].tanitimBaslik}',
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
                    '${yem[id].tanitimicerik}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:
                            MediaQuery.of(context).size.height * 0.001 * 25),
                  ))),
              Container(
                  child: Center(
                      child: Text('${yem[id].zararBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text('${yem[id].zararicerik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  child: Center(
                      child: Text('${yem[id].mucadeleBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text('${yem[id].mucadeleicerik}',
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
                    '${yem[id].resim}',
                    width: (MediaQuery.of(context).size.width / 3),
                    height: (MediaQuery.of(context).size.width / 3),
                  ),
                ],
              ))),
            ])));
  }
}


// ignore: must_be_immutable
class NullPestDesing extends StatelessWidget {
  var id;
  NullPestDesing({Key key, this.id: int}) : super(key: key,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${newPest[id].anaBaslik}'),
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
                      child: Text('${newPest[id].tanitimBaslik}',
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
                    '${newPest[id].tanitimicerik}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:
                            MediaQuery.of(context).size.height * 0.001 * 25),
                  ))),
              Container(
                  child: Center(
                      child: Text('${newPest[id].zararBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text('${newPest[id].zararicerik}',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  child: Center(
                      child: Text('${newPest[id].mucadeleBaslik}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height *
                                  0.001 *
                                  25)))),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Text('${newPest[id].mucadeleicerik}',
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
                    '${newPest[id].resim}',
                    width: (MediaQuery.of(context).size.width / 3),
                    height: (MediaQuery.of(context).size.width / 3),
                  ),
                ],
              ))),
            ])));
  }
}
