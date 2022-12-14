import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_grid/responsive_grid.dart';


TextStyle Headline(context){

  var a = MediaQuery.of(context).size.width;
  var c = MediaQuery.of(context).size.height;
  var b = MediaQuery.of(context).orientation;
  if(a<700){
    //
    return TextStyle(
      color: Colors.black,
      fontSize: 34,
    );
  }else{
    //Desktop
    return TextStyle(
      color: Colors.green,
      fontSize: 34,

    );
  }
}

InputDecoration AppInputStyle(label)
{
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(),
    labelText: label
  );
 }

 TextStyle HeadTextStyle(){
  return TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w800,
  );
 }

 ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4))
    ),

  );
 }