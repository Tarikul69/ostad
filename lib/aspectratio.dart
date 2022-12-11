import 'package:flutter/material.dart';
import 'package:ostad/navigation.dart';
import 'package:ostad/style.dart';

class aspectratio extends StatelessWidget {
  const aspectratio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var a = MediaQuery.of(context).size.width;
    var c = MediaQuery.of(context).size.height;
    var b = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: navigation(),
      body:   Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Screen Width', style: Headline(context),),
        ],
      )
    );
  }
}
