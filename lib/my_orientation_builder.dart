import 'package:flutter/material.dart';

class MyOrientationBuilder extends StatelessWidget {
  const MyOrientationBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OrientationBuilder"),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 3 : 5,
              children: List.generate(
                50,
                (index) {
                  return Center(
                    child: Text('Item $index'),
                  );
                },
              ));
        },
      ),
    );
  }
}
