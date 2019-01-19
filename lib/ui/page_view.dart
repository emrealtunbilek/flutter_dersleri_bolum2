import 'package:flutter/material.dart';

class PageViewOrnek extends StatefulWidget {
  @override
  _PageViewOrnekState createState() => _PageViewOrnekState();
}

class _PageViewOrnekState extends State<PageViewOrnek> {
  
  var myController = PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  bool yatayEksen = true;
  bool pageSnapping = true;
  bool reverseSira = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: PageView(
            scrollDirection: yatayEksen==true ? Axis.horizontal : Axis.vertical,
            reverse: reverseSira,
            controller: myController,
            pageSnapping: pageSnapping,
            onPageChanged: (index){
              debugPrint("page change gelen index $index");
            },
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.indigo.shade300,
                child: Center(child: Column(
                  children: <Widget>[
                    Text("Sayfa 0", style: TextStyle(fontSize: 30),),
                    RaisedButton(onPressed: (){
                      //myController.jumpToPage(2);
                      //myController.jumpTo(600);
                    },
                    child: Text("2. sayfaya git"),)
                  ],
                ),),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.amberAccent,
                child: Center(child: Text("Sayfa 1", style: TextStyle(fontSize: 30),),),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.teal,
                child: Center(child: Text("Sayfa 2", style: TextStyle(fontSize: 30),),),
              ),
            ],

          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.blueGrey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: <Widget>[
                    Text("Yatay Eksende Çalış"),
                    Checkbox(
                      value: yatayEksen,
                      onChanged: (b){
                        setState(() {
                          yatayEksen = b;
                        });
                      },
                    ),
                  ],),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: <Widget>[
                    Text("Page Snapping"),
                    Checkbox(
                      value: pageSnapping,
                      onChanged: (b){
                        setState(() {
                          pageSnapping = b;
                        });
                      },
                    ),
                  ],),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: <Widget>[
                    Text("Ters Sırada Calıs"),
                    Checkbox(
                      value: reverseSira,
                      onChanged: (b){
                        setState(() {
                          reverseSira = b;
                        });
                      },
                    ),
                  ],),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

