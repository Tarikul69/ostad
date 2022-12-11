import 'package:flutter/material.dart';

class floating extends StatelessWidget{
  const floating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    // ignore: non_constant_identifier_names
    MySnackBar(message, context){
      return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message))
      );
    }

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          child: Icon(Icons.add),
          onPressed: (){
            MySnackBar("Floating Action", context);
          },
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}