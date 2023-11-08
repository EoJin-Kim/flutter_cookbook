import 'package:flutter/material.dart';
import 'package:flutter_animated_container/my_animated_container.dart';
import 'package:flutter_animated_container/my_animated_opacity.dart';
import 'package:flutter_animated_container/my_drawer.dart';
import 'package:flutter_animated_container/my_orientation_builder.dart';
import 'package:flutter_animated_container/my_snackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyOrientationBuilder(),
    );
  }
}
