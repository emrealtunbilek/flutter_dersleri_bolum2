import 'package:flutter/material.dart';

class TabOrnek extends StatefulWidget {
  @override
  _TabOrnekState createState() => _TabOrnekState();
}

class _TabOrnekState extends State<TabOrnek>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Kullanımı"),
        bottom: tabBarimBottom(),
      ),
      bottomNavigationBar: tabBarimBottom(),
      body: TabBarView(controller: tabController,children: <Widget>[
        Container(
          color: Colors.redAccent,
          child: Center(child: Text("TAB 1", style: TextStyle(fontSize: 48),)),
        ),
        Container(
          color: Colors.blueAccent,
          child: Center(child: Text("TAB 2", style: TextStyle(fontSize: 48),)),
        ),
        Container(
          color: Colors.greenAccent,
          child: Center(child: Text("TAB 3", style: TextStyle(fontSize: 48),)),
        ),
      ],),
    );
  }

  TabBar tabBarim() {
    return TabBar(controller: tabController, tabs: [
        Tab(
          icon: Icon(Icons.keyboard),
          text: "Tab 1",
        ),
        Tab(
          icon: Icon(Icons.lock),
          text: "Tab 2",
        ),
        Tab(
          icon: Icon(Icons.add_box),
          text: "Tab 3",
        ),
      ]);
  }
  Widget tabBarimBottom() {
    return Container(
      color: Colors.tealAccent,
      child: TabBar(controller: tabController, tabs: [
        Tab(
          icon: Icon(Icons.keyboard),
          text: "Tab 1",
        ),
        Tab(
          icon: Icon(Icons.lock),
          text: "Tab 2",
        ),
        Tab(
          icon: Icon(Icons.add_box),
          text: "Tab 3",
        ),
      ]),
    );
  }
}
