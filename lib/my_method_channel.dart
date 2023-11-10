import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyMethodChannel extends StatefulWidget {
  const MyMethodChannel({super.key});

  @override
  State<MyMethodChannel> createState() => _MyMethodChannelState();
}

class _MyMethodChannelState extends State<MyMethodChannel> {
  static const platform = MethodChannel('example.com/value');
  String _value ='null';

  Future<void> _getNativeValue() async {
    String value;
    try{
      value = await platform.invokeMethod('getValue');
      setState(() {
        _value = value;
      });
    } on PlatformException catch (e){
      setState(() {
        _value = '네이티브 코드 실행 에러 : ${e.message}';
      });

    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MethodChannel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_value'),
            FloatingActionButton(
              onPressed: () {
                _getNativeValue();
              },
              child: Text('네이티브 값 얻기'),
            )
          ],
        ),
      ),
    );
  }
}
