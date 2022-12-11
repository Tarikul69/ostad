import 'package:flutter/material.dart';


class listview extends StatelessWidget {
  listview({Key? key});
  var MyItems=[
    {"img":"https://thumbs.dreamstime.com/z/flat-style-character-avatar-icon-vector-flat-style-character-avatar-icon-female-107139893.jpg", "title":"Abir"},
    {"img":"https://thumbs.dreamstime.com/z/flat-style-character-avatar-icon-vector-flat-style-character-avatar-icon-female-107139893.jpg", "title":"Tanha"},
    {"img":"https://thumbs.dreamstime.com/z/flat-style-character-avatar-icon-vector-flat-style-character-avatar-icon-female-107139893.jpg", "title":"Munna"},
    {"img":"https://thumbs.dreamstime.com/z/flat-style-character-avatar-icon-vector-flat-style-character-avatar-icon-female-107139893.jpg", "title":"Shanzidha"},
    {"img":"https://thumbs.dreamstime.com/z/flat-style-character-avatar-icon-vector-flat-style-character-avatar-icon-female-107139893.jpg", "title":"Lata"},
    {"img":"https://thumbs.dreamstime.com/z/flat-style-character-avatar-icon-vector-flat-style-character-avatar-icon-female-107139893.jpg", "title":"Bangladesh"},
    {"img":"https://thumbs.dreamstime.com/z/flat-style-character-avatar-icon-vector-flat-style-character-avatar-icon-female-107139893.jpg", "title":"Bangladesh"},
    {"img":"https://thumbs.dreamstime.com/z/flat-style-character-avatar-icon-vector-flat-style-character-avatar-icon-female-107139893.jpg", "title":"Bangladesh"},
    {"img":"https://thumbs.dreamstime.com/z/flat-style-character-avatar-icon-vector-flat-style-character-avatar-icon-female-107139893.jpg", "title":"Bangladesh"},
  ];

  mysnackbar(context, msg)
  {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('List View'),
        ),
          body: ListView.builder(
            itemCount: MyItems.length,
            itemBuilder: (context, index){
              return GestureDetector(
               onTap: (){
                 mysnackbar(context, MyItems[index]['title']);
               },
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 250,
                  child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill,)
                ),
              );
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey,
            items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label:'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          ],),
      ),
    );
  }
}
