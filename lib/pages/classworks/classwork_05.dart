import 'package:flutter/material.dart';

class Classwork05 extends StatelessWidget {
  const Classwork05({super.key});

  String function(int result) {
    var count = 10;
    if (result == 1) {
      return speaking(count);
    } else if (result == 2) {
      return walking(count);
    } else if (result == 3) {
      return add(10, 20).toString();
    } else if (result == 4) {
      return sub(10, 20).toString();
    } else if (result == 5) {
      int a = 10;
      int b = 20;
      var c = 'a = $a, b = $b\n';
      c += 'a + b = ';
      c += myFunc(a, b).toString();
      return c;
    } else if (result == 6) {
      return div(a: 100, b: 2).toString();
    } else {
      return 'Nothing to show';
    }
  }

  num div({num? a, num? b}) {
    if (b == 0) {
      return 0;
    }
    return a! / b!;
  }

  num add(num a, num b) {
    var c = a + b;
    return c;
  }

  num sub(num a, num b) {
    var c = a - b;
    return c;
  }

  num myFunc([num a = 0, num b = 0, num c = 0, num d = 0]) => a + b + c + d;

  String speaking(int j) {
    var s = "Speaking\n";
    for (int i = 1; i <= j; i++) {
      s += '$i\n';
    }
    return s;
  }

  String walking(int j) {
    var s = "Walking\n";
    int i = 1;
    while (i <= j) {
      s += '$i\n';
      i += 2;
    }
    return s;
  }

  @override
  Widget build(BuildContext context) {
    List<String> results = [];
    for (int i = 6; i >= 0; i--) {
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
