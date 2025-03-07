import 'package:flutter/material.dart';

class SitemapPage extends StatelessWidget {
  const SitemapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> classworks = [
      {
        'title': 'Classwork 01 - Variables & Data Types',
        'route': '/classwork_01',
      },
      {
        'title': 'Classwork 02 - Functions & Control Flow',
        'route': '/classwork_02',
      },
      {
        'title': 'Classwork 03 - Object-Oriented Programming',
        'route': '/classwork_03',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Dart Practice Sitemap')),
      body: ListView.builder(
        itemCount: classworks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(classworks[index]['title']!),
            onTap:
                () => Navigator.pushNamed(context, classworks[index]['route']!),
          );
        },
      ),
    );
  }
}
