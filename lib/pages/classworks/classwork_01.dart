import 'package:flutter/material.dart';

class Classwork01 extends StatelessWidget {
  const Classwork01({super.key});

  String function(int result) {
    const name = "Maetee";
    var age = 48;
    var weight = 75.5;
    var height = 1.75;

    var result1 = "\t\t\t\t\t\tMy name is $name";
    result1 += "\n\t\tI am $age years old";
    result1 += "\nweight: $weight kg.";
    result1 += "\n\t\t\t\theight: ${height * 100} cm.";

    var result2 = """
      My name is $name
  I am $age years old
weight: $weight kg.
    height: ${height * 100} cm.
    """;

    if (result == 1) {
      return result1;
    } else {
      return result2;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> results = [];
    for (int i = 1; i <= 2; i++) {
      results.add(function(i));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Classwork 01 - Variables')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: results.length,
          itemBuilder:
              (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(results[index]),
              ),
        ),
      ),
    );
  }
}
