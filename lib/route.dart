import 'package:flutter/material.dart';
import 'pages/sitemap_page.dart';
import 'pages/classwork/classwork_01.dart';
import 'pages/classwork/classwork_02.dart';
import 'pages/classwork/classwork_03.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SitemapPage());
      case '/classwork_01':
        return MaterialPageRoute(builder: (_) => Classwork01());
      case '/classwork_02':
        return MaterialPageRoute(builder: (_) => Classwork02());
      case '/classwork_03':
        return MaterialPageRoute(builder: (_) => Classwork03());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text('Page not found'))),
        );
    }
  }
}
