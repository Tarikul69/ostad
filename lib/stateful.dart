import 'package:flutter/material.dart';

class stateful extends StatefulWidget {
  stateful({Key? key}) : super(key: key);
  int countNumber=0;
  @override
  State<stateful> createState(){
     return  _statefulState();
  }

}


class _statefulState extends State<stateful> {

  @override
  void initState(){
    print("initState called");
    super.initState();
  }

  @override
  void didChangeDependencies(){
    print("didchangeDependencies called");
    super.didChangeDependencies();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('App'),),
      body: Center(
        child: Text('Cont ${widget.countNumber.toString()}', style: TextStyle(fontSize: 24, backgroundColor: Colors.cyan),),
      ),

      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (){
        setState(() {
          print("State Print");
          widget.countNumber = widget.countNumber+1;
        });
      },
      ),
    );
  }
}
