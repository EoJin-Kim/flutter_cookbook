import 'package:flutter/material.dart';

class MySwipeToDismiss extends StatefulWidget {
  const MySwipeToDismiss({super.key});

  @override
  State<MySwipeToDismiss> createState() => _MySwipeToDismissState();
}

class _MySwipeToDismissState extends State<MySwipeToDismiss> {
  final items = List<String>.generate(20, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe To Dismiss'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            background: Container(color: Colors.red,),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                items.remove(index);
              });
            },
            child: ListTile(
              title: Text('${items[index]}'),
            ),
            key: Key(item),
          );
        },
      ),
    );
  }
}
