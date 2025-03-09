import 'package:flutter/material.dart';

class SitemapPage extends StatelessWidget {
  const SitemapPage({super.key});

  @override
  Widget build(BuildContext context) {
    const classworks = [
      {'title': 'Classwork 01 - Variables', 'route': '/classwork_01'},
      {'title': 'Classwork 02 - Data Types', 'route': '/classwork_02'},
      {'title': 'Classwork 03 - Operators', 'route': '/classwork_03'},
      {'title': 'Classwork 04 - Loops', 'route': '/classwork_04'},
      {'title': 'Classwork 05 - Functions', 'route': '/classwork_05'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Dart Practice Sitemap')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children:
            classworks.map((item) {
              return Card(
                child: ListTile(
                  title: Text(item['title']!),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () => Navigator.pushNamed(context, item['route']!),
                ),
              );
            }).toList(),
      ),
    );
  }
}
