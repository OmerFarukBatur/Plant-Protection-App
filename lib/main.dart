import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:my_app/statick.dart';
import 'plantCardDesing.dart';
import 'data/database.dart';
import 'dart:math';
import 'about.dart';

List<CameraDescription> cameras;

Future<void> main() async {
  // initialize the cameras when the app starts
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  // running the app
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    //title: 'Bitki Kalkanı',
    // theme: ThemeData.dark(),
  ));
}

int id = 0;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    id = Random().nextInt(allpests.length);
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Günün Tarım Zararlısı',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.001 * 25)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: aboutDialog,
          ),
        ],
      ),
      body: Container(
          margin: const EdgeInsets.all(20),
          child: ListView(children: <Widget>[
            Container(
              margin: const EdgeInsets.all(20),
                child: Center(
                    child: Text('${allpests[id].anaBaslik}',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height *
                                0.001 *
                                25)))),
            Container(
                child: Center(
                    child: Text('${allpests[id].tanitimBaslik}',
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
                  '${allpests[id].tanitimicerik}',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize:
                          MediaQuery.of(context).size.height * 0.001 * 25),
                ))),
            Container(
                child: Center(
                    child: Text('${allpests[id].zararBaslik}',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height *
                                0.001 *
                                25)))),
            Container(
                margin: const EdgeInsets.all(20),
                child: Center(
                    child: Text('${allpests[id].zararicerik}',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.height *
                                0.001 *
                                25)))),
            Container(
                child: Center(
                    child: Text('${allpests[id].mucadeleBaslik}',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height *
                                0.001 *
                                25)))),
            Container(
                margin: const EdgeInsets.all(20),
                child: Center(
                    child: Text('${allpests[id].mucadeleicerik}',
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
                  '${allpests[id].resim}',
                  width: (MediaQuery.of(context).size.width / 3),
                  height: (MediaQuery.of(context).size.width / 3),
                ),
              ],
            ))),
          ])),
    );
  }

  aboutDialog() {
    showAboutDialog(
      context: context,
      applicationName: "Bitki Kalkanı",
      applicationLegalese: "By Ömer Faruk Batur",
      applicationVersion: "1.0",
      children: <Widget>[
        Text(""),
      ],
    );
  }
}

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Menü',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.cyan,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Ana Ekran'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()))
            },
          ),
          ListTile(
            leading: Icon(Icons.search_sharp),
            title: Text('Zararlı Tespiti'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Statick()))
            },
          ),
          ListTile(
            leading: Icon(Icons.library_books),
            title: Text('Tarım Zararlıları'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PlantInfo()))
            },
          ),
          ListTile(
            leading: Icon(Icons.error_outline_rounded),
            title: Text('Hakkında'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (contex)=>AboutPage()))},
          ),
        ],
      ),
    );
  }
}
