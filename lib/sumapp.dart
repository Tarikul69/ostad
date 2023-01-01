import 'package:flutter/material.dart';
import 'package:ostad/stateful.dart';
import 'package:ostad/style.dart';

class sumapp extends StatelessWidget {
  const sumapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sum App",
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, double> FormValue={
    "num1":0,
    "num2":0,
    "num3":0,
  };
  double sum=0;


  @override
  Widget build(BuildContext context) {

    MyInputOnChange(InputKey, Value){
      setState(() {
        FormValue.update(InputKey, (value) => double.parse(Value));
      });
     }

     AddallNumber(){
      setState((){
        sum = FormValue['num1']!+FormValue['num2']!+FormValue['num3']!;
      });
       //print(sum);
     }


    return Scaffold(
      appBar: AppBar(title: Text("App"),),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(sum.toString(), style: HeadTextStyle(),),
            SizedBox(height: 20,),
            TextFormField(onChanged: (value){
              MyInputOnChange("num1", value);
              }, decoration: AppInputStyle("First Number"),),
            SizedBox(height: 20,),
            TextFormField(onChanged: (value){
              MyInputOnChange("num2", value);
            }, decoration: AppInputStyle("Second Number"),),
            SizedBox(height: 20,),
            TextFormField(onChanged: (value){
              MyInputOnChange("num3", value);
            }, decoration: AppInputStyle("Third Number"),),
            SizedBox(height: 20,),
            Container(

              width: double.infinity,
              child: ElevatedButton(
                style: AppButtonStyle(),
                child: Text("Add"),
                onPressed: (){
                  AddallNumber();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
