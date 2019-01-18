import 'package:flutter/material.dart';
import 'package:flutter_dersleri_bolum2/ui/drawer_menu.dart';
import 'package:flutter_dersleri_bolum2/ui/kisisel_font_kullanimi.dart';

void main() => runApp(FlutterDersleri());

class FlutterDersleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dersleri',
      theme: ThemeData(
          fontFamily: 'Genel',
          primarySwatch: Colors.amber,
          accentColor: Colors.orangeAccent),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Flutter Dersleri Bölüm 2"),
      ),
      body: KisiselFont(),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.cyan.shade100,
          primaryColor: Colors.orangeAccent
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("AnaSayfa"),
                backgroundColor: Colors.amber),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                activeIcon: Icon(Icons.call),
                title: Text("Ara"),
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                title: Text("Ekle"),
                backgroundColor: Colors.tealAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box),
                title: Text("Profil"),
                backgroundColor: Colors.brown),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: secilenMenuItem,
          onTap: (index){
            setState(() {
              secilenMenuItem = index;
            });
          },
        ),
      ),
    );
  }
}
