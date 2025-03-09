import 'package:flutter/material.dart';
import 'pages/sitemap_page.dart';
import 'pages/classworks/classwork_01.dart';
import 'pages/classworks/classwork_02.dart';
import 'pages/classworks/classwork_03.dart';
import 'pages/classworks/classwork_04.dart';
import 'pages/classworks/classwork_05.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SitemapPage());
      case '/classwork_01':
        return MaterialPageRoute(builder: (_) => const Classwork01());
      case '/classwork_02':
        return MaterialPageRoute(builder: (_) => const Classwork02());
      case '/classwork_03':
        return MaterialPageRoute(builder: (_) => const Classwork03());
      case '/classwork_04':
        return MaterialPageRoute(builder: (_) => const Classwork04());
      case '/classwork_05':
        return MaterialPageRoute(builder: (_) => const Classwork05());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                appBar: AppBar(title: const Text('Error')),
                body: const Center(child: Text('Page not found')),
              ),
        );
    }
  }
}
