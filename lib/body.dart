import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class body extends StatelessWidget{
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Body"),),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(height: 100, width: 100, child: Image.network('https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/3uKiGvN5pjbtwlTWEhugzt/f57b790f9aefcc130786a710e4fa276d/GettyImages-1338373232.jpg?w=1500&h=680&q=60&fit=fill&f=faces&fm=jpg&fl=progressive&auto=format%2Ccompress&dpr=1&w=1000&h='),),
            Container(height: 100, width: 100, child: Image.network('https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/3uKiGvN5pjbtwlTWEhugzt/f57b790f9aefcc130786a710e4fa276d/GettyImages-1338373232.jpg?w=1500&h=680&q=60&fit=fill&f=faces&fm=jpg&fl=progressive&auto=format%2Ccompress&dpr=1&w=1000&h='),),
            Container(height: 100, width: 100, child: Image.network('https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://images.ctfassets.net/wp1lcwdav1p1/3uKiGvN5pjbtwlTWEhugzt/f57b790f9aefcc130786a710e4fa276d/GettyImages-1338373232.jpg?w=1500&h=680&q=60&fit=fill&f=faces&fm=jpg&fl=progressive&auto=format%2Ccompress&dpr=1&w=1000&h='),)


          ],
        )
      ),
    );
  }

}