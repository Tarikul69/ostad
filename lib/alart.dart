import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class alart extends StatelessWidget{
  const alart({Key? key});


  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: CupertinoAlertDialog(
        title: Text("Alart"),
        content: Text("Are you sure you want to delete."),
          actions: [
            MaterialButton(onPressed: (){},child: Text("Good"),),
            MaterialButton(onPressed: (){},child: Text("Good"),),

          ],
      ),
    );
  }
}