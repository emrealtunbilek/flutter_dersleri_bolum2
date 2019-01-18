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
          primarySwatch: Colors.amber,
          accentColor: Colors.orangeAccent),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("emrealtunbilek"),
                accountEmail: Text("emrealtunbilek@gmail.com"),
                currentAccountPicture: Image.network(
                    "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png"),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    child: Text("AK"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text("EA"),
                  )
                ],
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Ana Sayfa"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      leading: Icon(Icons.call),
                      title: Text("Ara"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      leading: Icon(Icons.account_box),
                      title: Text("Profil"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    Divider(),
                    InkWell(
                      onTap: (){

                      },
                      splashColor: Colors.cyan,
                      child: ListTile(
                        leading: Icon(Icons.home),
                        title: Text("Ana Sayfa"),
                        trailing: Icon(Icons.chevron_right),
                      ),
                    ),
                    AboutListTile(
                      applicationName: "Flutter Dersleri",
                      applicationIcon: Icon(Icons.save),
                      applicationVersion: "2.0",
                      child: Text("ABOUT US"),
                      applicationLegalese: "asdasdasd",
                      icon: Icon(Icons.keyboard),
                      aboutBoxChildren: <Widget>[
                        Text("Child 1"),
                        Text("Child 2"),
                        Text("Child 3"),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
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
