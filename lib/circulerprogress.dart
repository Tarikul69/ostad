import 'package:flutter/material.dart';

class circulerprogress extends StatelessWidget {
  const circulerprogress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circuler Progress"),
      ),
      body: Center(
        child: Icon(Icons.account_balance, size: 200, color: Colors.red,)
      ),
    );
  }
}
