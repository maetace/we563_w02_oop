import 'package:flutter/material.dart';

class Classwork01 extends StatelessWidget {
  const Classwork01({super.key});

  String exampleFunction() {
    String name = "Flutter";
    int version = 3;
    return "Welcome to $name $version!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classwork 01 - Variables & Data Types'),
      ),
      body: Center(child: Text(exampleFunction())),
    );
  }
}
