import 'package:flutter/material.dart';

class Classwork03 extends StatelessWidget {
  const Classwork03({super.key});

  String function(int result) {
    var a = 55, b = 20, c = 1;

    var result1 = {
      'a + b': a + b,
      'a - b': a - b,
      'a * b': a * b,
      'a / b': (a / b).toStringAsFixed(2),
      'a ~/ b': a ~/ b,
      'a % b': a % b,
    };

    var result2 = {
      'a < b': a < b,
      'a > b': a > b,
      'a <= b': a <= b,
      'a >= b': a >= b,
      'a == b': a == b,
      'a != b': a != b,
    };

    var result3 = {
      'a++': a++,
      '++a': ++a,
      'a--': a--,
      '--a': --a,
      'a += 1': a += 1,
      'a -= 1': a -= 1,
    };

    var result4 = {
      'a > b && a > c': a > b && a > c,
      'a > b && a < c': a > b && a < c,
      'a > b || a > c': a > b || a > c,
      'a > b || a < c': a > b || a < c,
      '!(a > b || a < c)': !(a > b || a < c),
    };

    var returnResult =
        result == 1
            ? result1
            : result == 2
            ? result2
            : result == 3
            ? result3
            : result4;

    return "a = $a, b = $b, c = $c:\n${returnResult.entries.map((entry) => '${entry.key}: ${entry.value}').join('\n')}";
  }

  @override
  Widget build(BuildContext context) {
    List<String> results = [];
    for (int i = 1; i <= 4; i++) {
      results.add(function(i));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Classwork 03 - Operators')),
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
