import 'package:flutter/material.dart';

class MySwipeToDismiss extends StatefulWidget {
  const MySwipeToDismiss({super.key});

  @override
  State<MySwipeToDismiss> createState() => _MySwipeToDismissState();
}

class _MySwipeToDismissState extends State<MySwipeToDismiss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe To Dismiss'),
      ),
      body: Container(),
    );
  }
}
