import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_app/data/database.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hakkında'),
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
                    child: Text('${aboutInfo[0].baslik1}',
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
                  '${aboutInfo[0].icerik1}',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize:
                          MediaQuery.of(context).size.height * 0.001 * 25),
                ))),
            Container(
                child: Center(
                    child: Text('${aboutInfo[0].baslik2}',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height *
                                0.001 *
                                25)))),
            Container(
                margin: const EdgeInsets.all(20),
                child: Center(
                    child: Text('${aboutInfo[0].icerik2}',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.height *
                                0.001 *
                                25)))),
          ])),
    );
  }
}
