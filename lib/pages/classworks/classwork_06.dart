import 'package:flutter/material.dart';

class Classwork06 extends StatelessWidget {
  const Classwork06({super.key});

  String function(int i) {
    var title = 'Mr.';
    var firstName = 'John';
    var address = 'Bangkok, Thailand';
    Person dad = Person(title: title, firstName: firstName, address: address);
    var employee = Employee(
      firstName: 'John',
      address: 'Bangkok, Thailand',
      title: 'Mr.',
      position: 'Software Engineer',
      salary: '100,000 THB',
    );

    if (i == 1) {
      return 'Dad\'s name is ${dad.title} ${dad.firstName}.';
    } else if (i == 2) {
      return 'He lives in ${dad.address}.';
    } else if (i == 3) {
      return 'And now, ${dad.title} ${dad.firstName} is currently ${dad.eat()} in ${dad.address}.';
    } else if (i == 4) {
      return '${employee.title} ${employee.firstName} is a ${employee.position}, and he gets a salary of about ${employee.salary} in ${employee.address}';
    } else {
      return 'There\'s nothing more to say.';
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> results = [];
    for (int i = 1; i <= 5; i++) {
      results.add(function(i));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Classwork 06 - OOP')),
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

class Person {
  String? firstName;
  String? title;
  String? address;

  Person({required String this.firstName, this.address, this.title});

  String eat() {
    return 'eating';
  }

  void walk() {}
  void run() {}
}

class Employee extends Person {
  String? position;
  String? salary;

  Employee({
    required super.firstName,
    super.address,
    super.title,
    this.position,
    this.salary,
  });

  void work() {}
  void takeBreak() {}
}

class Car {
  int? numberOfWheels;
  int? numberOfDoors;

  void start() {}
  void stop() {}
  void accelerate() {}
  void brake() {}
}

class FacebookPost {
  String? postDate;
  String? postTitle;
  String? postDescription;

  int like() {
    return 0;
  }
}
