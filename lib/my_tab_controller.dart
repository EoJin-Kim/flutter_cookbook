import 'package:flutter/material.dart';

class MyTabController extends StatefulWidget {
  const MyTabController({super.key});

  @override
  State<MyTabController> createState() => _MyTabControllerState();
}

class _MyTabControllerState extends State<MyTabController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabController'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.access_alarm),
                text: 'Tab1',
              ),
              Text('Tab2'),
              Text('Tab3'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text('Tab1'),
            Text('Tab2'),
            Text('Tab3'),
          ],
        ),
      ),
    );
  }
}
