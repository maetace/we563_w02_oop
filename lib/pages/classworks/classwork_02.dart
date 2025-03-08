import 'package:flutter/material.dart';

class Classwork02 extends StatelessWidget {
  const Classwork02({super.key});

  String function(int result) {
    var ages = [5, 10, 15, 20, 25, 30];
    var profile = {'name': 'Maetee', 'age': 48, 'weight': 75.5, 'height': 1.75};

    return result == 1
        ? "Ages:\n${ages.join('\n')}"
        : "Profile:\n${profile.entries.map((entry) => '${entry.key}: ${entry.value}').join('\n')}";
  }

  @override
  Widget build(BuildContext context) {
    List<String> results = [];
    for (int i = 1; i <= 2; i++) {
      results.add(function(i));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Classwork 02 - Data Types')),
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
