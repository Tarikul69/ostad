import 'package:flutter/material.dart';

class tabbad extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: DefaultTabController(
          length: 6,
          child: Scaffold(
          appBar: AppBar(
            title: Text("Good"),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: 'Home',),
                Tab(icon: Icon(Icons.search),text: 'Search',),
                Tab(icon: Icon(Icons.message), text: 'Message',),
                Tab(icon: Icon(Icons.alarm), text: 'Alarm',),
                Tab(icon: Icon(Icons.alarm), text: 'Alarm',),
                Tab(icon: Icon(Icons.alarm), text: 'Alarm',),


              ],
            ),
          ),
            body: TabBarView(
              children: [
                Text("1"),
                Text("2"),
                Text("3"),
                Text("4"),
                Text("5"),
                Text("6"),


              ],
            ),
            drawer: Drawer(),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.grey,

              items: [
                BottomNavigationBarItem(icon: Icon(Icons.add),label: "add"),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "home")
              ],
            ),
      ),
        ),
    );
  }
}
class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
    );
  }
}
