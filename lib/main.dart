import 'package:flutter/material.dart';

void main() => runApp(FlutterDersleri());

class FlutterDersleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dersleri',
      theme: ThemeData(
        fontFamily: 'Genel',
          primarySwatch: Colors.cyan, accentColor: Colors.orangeAccent),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Dersleri Bölüm 2"),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Text(
                "Kişisel Font Kullanımı",
                style: TextStyle(
                  fontFamily: 'Genel',
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Center(
              child: Text(
                "Kişisel Font Kullanımı",
                style: TextStyle(
                  fontFamily: 'ElYazisi',
                  fontSize: 36,
                ),
              ),
            ),
            Center(
              child: Text(
                "Kişisel Font Kullanımı",
                style: TextStyle(
                  //fontFamily: 'Genel',
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Center(
              child: Text(
                "Kişisel Font Kullanımı",
                style: TextStyle(
                  fontFamily: 'Genel',
                  fontSize: 36,
                ),
              ),
            ),

            Center(
              child: Text(
                "Kişisel Font Kullanımı",
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
            ),
          ],
        ));
  }
}
