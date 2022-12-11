import 'package:flutter/material.dart';

class card extends StatelessWidget {
  const card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: Center(
        child: Card(
          elevation: 80,
          shadowColor: Colors.brown,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.grey,
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(
              child: Text("This is card", style: TextStyle(fontSize: 20),),
            ),
          ),
        ),

      )
    );
  }
}
