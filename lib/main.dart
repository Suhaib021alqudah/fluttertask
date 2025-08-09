import 'package:flutter/material.dart';
import 'package:fluttertask/home_page.dart';

void main() {
  runApp(const  FlutterTask());
}

class FlutterTask extends StatelessWidget {
  const FlutterTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'My APP', debugShowCheckedModeBanner: false,home: HomePage(),);
  }
}
