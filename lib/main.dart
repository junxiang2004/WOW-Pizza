import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const WOWPizzaApp());
}

class WOWPizzaApp extends StatelessWidget {
  const WOWPizzaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WOW PIZZA !',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}