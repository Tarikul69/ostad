import 'package:flutter/material.dart';
import 'package:ostad/floating.dart';
import 'package:ostad/bottomnav.dart';

class abcd extends StatelessWidget{
  const abcd({Key? key}) : super(key: key);


  MySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        //floatingActionButton: floating(),
        //bottomNavigationBar: bottomnav(),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home ),
              label: 'Home',
              backgroundColor: Colors.black12,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Message',
              backgroundColor: Colors.black12,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Home',
              backgroundColor: Colors.black12,
            ),
          ],
        onTap: (int index){
            if(index ==0){
              MySnackBar(context, 'Home');
            }
            if(index ==1){
              MySnackBar(context, 'Home');
            }
            if(index ==2){
              MySnackBar(context, 'Settings');
            }
        },),
        appBar: AppBar(
          title: Text('Home'),
          toolbarHeight: 60,
          elevation: 0,
          backgroundColor: Colors.grey,
          actions: [
            IconButton(onPressed: (){MySnackBar("Settings", context);}, icon: Icon(Icons.settings)),
            IconButton(onPressed: (){MySnackBar("Email", context);}, icon: Icon(Icons.email)),
            IconButton(onPressed: (){MySnackBar("Search", context);}, icon: Icon(Icons.search)),

          ],
         ),

       ),
    );
  }

}
