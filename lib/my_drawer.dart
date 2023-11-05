import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text('Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: (){

                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: (){

                },
              ),
              ListTile(
                title: Text('Item 3'),
                onTap: (){
                  
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Drawer"),
        ),
        body: Center());
  }
}
