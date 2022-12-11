import 'package:flutter/material.dart';



class bottomnav extends StatelessWidget{
const bottomnav({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
         bottomNavigationBar: BottomNavigationBar(
           currentIndex: 1,
           items: [
             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',backgroundColor: Colors.white54,),
             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',backgroundColor: Colors.white54,),
             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',backgroundColor: Colors.white54,),
           ],
         ),
      ),
    );
  }

}