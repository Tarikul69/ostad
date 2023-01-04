import 'package:flutter/material.dart';

class todo extends StatefulWidget {
  const todo({Key? key}) : super(key: key);

  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {

  List todoList = [{"1":"1"},{"1":"1"},{"1":"1"},];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ToDo"), backgroundColor: Colors.green,),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(
                        child: TextFormField(decoration: InputDecoration(
                          contentPadding:EdgeInsets.fromLTRB(70, 10, 10, 20),
                          border: OutlineInputBorder(),
                          labelText: 'Bangladesh',
                        ),
                        )
                    ),
                    Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(),
                          onPressed: (){},
                          child: Text('Add'),)
                    ),
                  ],
                )
            ),
            Expanded(
                flex : 90,
                child: ListView.builder(
                    itemCount: todoList.length,
                    itemBuilder: (context, index){
                      return Card(
                        child: Text("List View"),
                      );
                    }
                )
            ),
          ],
        ),
      ),
    );
  }
}
