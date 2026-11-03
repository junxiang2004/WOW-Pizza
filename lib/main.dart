
import 'package:flutter/material.dart';

import 'facebook.dart';
import 'home_page.dart';
import 'menu.dart';
import 'twitter.dart';
import 'about_page.dart'; // Added About Page

void main() {
  runApp(const WOWPizzaApp());
}

class WOWPizzaApp extends StatelessWidget {
  const WOWPizzaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WOW Pizza',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
        ),
        useMaterial3: true,
      ),

      initialRoute: '/',

      routes: {
        '/': (context) => const HomePage(),
        '/menu': (context) => const MenuPage(),
        '/twitter': (context) => const Twitter(),
        '/facebook': (context) => const Facebook(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}
