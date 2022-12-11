import 'package:flutter/material.dart';

class form1 extends StatelessWidget {
  const form1({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 60)
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Form"),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(labelText: 'First Name', border: OutlineInputBorder(),),),),
            Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(labelText: 'Last Name', border: OutlineInputBorder(),),),),
            Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder(),),),),
            Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder(),),),),
            Padding(padding: EdgeInsets.all(10), child: ElevatedButton(onPressed: (){},style: buttonStyle, child: Text("Submit"),),)
          ],
        ),
      ),
    );
  }
}
