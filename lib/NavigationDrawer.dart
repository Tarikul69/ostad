import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget{
  const NavigationDrawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context)
  {
    // ignore: non_constant_identifier_names

    MySnackBar(message, context){
      return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message))
      );
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Drawer'),backgroundColor: Colors.pink,),
        drawer: Drawer(
          backgroundColor: Colors.grey,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.black12),
                    accountName: Text("Tarikul Abir"),
                    accountEmail: Text("tarikulabir931@gmail.com"),
                    currentAccountPicture: Image.network("https://thumbs.dreamstime.com/z/flat-style-character-avatar-icon-vector-flat-style-character-avatar-icon-female-107139893.jpg", ),
              )),
              ListTile(
                onTap: (){
                  MySnackBar('Hone', context);
                },
                title: Text('Home'),
                leading: Icon(Icons.home),
               ),
              ListTile(
                onTap: (){},
                title: Text('Message'),
                leading: Icon(Icons.mail),),
              ListTile(
                onTap: (){},
                title: Text('About'),
                leading: Icon(Icons.person),),
              ListTile(
                onTap: (){},
                title: Text('Settings'),
                leading: Icon(Icons.settings),),
              ListTile(
                onTap: (){},
                title: Text('Logout'),
                leading: Icon(Icons.logout),),

            ],
          ),
        ),

        //bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.pink, items: [BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')],),
      ),
     );
  }
}