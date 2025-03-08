import 'package:flutter/material.dart';

class Classwork04 extends StatelessWidget {
  const Classwork04({super.key});

  String function(int result) {
    var students = ["std1", "std2", "std3", "std4", "std5"];

    List<String> output = [];

    if (result == 1) {
      output.add("For:");
      for (int i = 0; i < students.length; i++) {
        output.add("Student ${i + 1}: ${students[i]}");
      }
    } else if (result == 2) {
      output.add("For Each:");
      int index = 1;
      // ignore: avoid_function_literals_in_foreach_calls
      students.forEach((std) {
        output.add("Student $index: $std");
        index++;
      });
    } else if (result == 3) {
      output.add("For In:");
      int index = 1;
      for (var std in students) {
        output.add("Student $index: $std");
        index++;
      }
    } else if (result == 4) {
      output.add("While:");
      int i = 0;
      while (i < students.length) {
        output.add("Student ${i + 1}: ${students[i]}");
        i++;
      }
    } else if (result == 5) {
      output.add("Do...While:");
      int i = 0;
      do {
        output.add("Student ${i + 1}: ${students[i]}");
        i++;
      } while (i < students.length);
    } else if (result == 6) {
      output.add("Continue:");
      for (int i = 0; i < 10; i++) {
        if (i % 2 == 0) {
          continue;
        }
        output.add("i = $i");
      }
    } else if (result == 7) {
      output.add("Break:");
      for (int i = 0; i < 10; i++) {
        if (i > 5) {
          break;
        }
        output.add("i = $i");
      }
    }

    return output.join('\n');
  }

  @override
  Widget build(BuildContext context) {
    List<String> results = [];
    for (int i = 1; i <= 7; i++) {
      results.add(function(i));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Classwork 04 - Loops')),
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
