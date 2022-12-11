import 'package:flutter/material.dart';


class button extends StatelessWidget{
button({Key? key});
  MySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }
  ButtonStyle buttonstyle=ElevatedButton.styleFrom(
    padding: EdgeInsets.all(25),
    onSurface: Colors.black12,
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.all(Radius.circular(20))),
    );
//  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Button"),),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: (){MySnackBar('Good',context);}, child: Text("Button"),style: ButtonStyle(),),
            ElevatedButton(onPressed: (){MySnackBar("Elevated button", context);}, child: Text("Elevated Button"), style: buttonstyle,),
            OutlinedButton(onPressed: (){MySnackBar('Outline button', context);}, child: Text("Button"), style: ButtonStyle(),)
          ],
        ),
      ),
    );
  }
}