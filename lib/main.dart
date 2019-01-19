import 'package:flutter/material.dart';
import 'package:flutter_dersleri_bolum2/ui/ana_sayfa.dart';
import 'package:flutter_dersleri_bolum2/ui/arama.dart';
import 'package:flutter_dersleri_bolum2/ui/drawer_menu.dart';
import 'package:flutter_dersleri_bolum2/ui/kisisel_font_kullanimi.dart';
import 'package:flutter_dersleri_bolum2/ui/page_view.dart';
import 'package:flutter_dersleri_bolum2/ui/tabs.dart';

void main() => runApp(FlutterDersleri());

class FlutterDersleri extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dersleri',
      theme: ThemeData(
          fontFamily: 'Genel',
          primarySwatch: Colors.teal,
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
  List<Widget> tumSayfalar;
  AnaSayfa sayfaAna;
  AramaSayfasi sayfaArama;
  PageViewOrnek pageViewOrnek;

  var keyAnaSayfa = PageStorageKey("key_ana_sayfa");
  var keyArama = PageStorageKey("key_arama_sayfa");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayfaAna = AnaSayfa(keyAnaSayfa);
    sayfaArama=AramaSayfasi(keyArama);
    pageViewOrnek = PageViewOrnek();
    tumSayfalar=[sayfaAna, sayfaArama, pageViewOrnek];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Flutter Dersleri Bölüm 2"),
      ),
      body: secilenMenuItem <= tumSayfalar.length-1 ? tumSayfalar[secilenMenuItem] : tumSayfalar[0],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.cyan.shade100,
        primaryColor: Colors.orangeAccent
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("ExpansionTile"),
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              activeIcon: Icon(Icons.call),
              title: Text("Liste"),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text("PageView"),
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
            if(index==3){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TabOrnek())).then((bb){
                secilenMenuItem = 0;
              });
            }
          });
        },
      ),
    );
  }
}
