import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    // Initialize the WebViewController
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted) // Enable JS
      ..loadRequest(Uri.parse('https://www.twitter.com')); // Load Twitter
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue, // Twitter color theme
        title: Row(
          children: [
            const Text('WOW Pizza', style: TextStyle(fontSize: 25.0)),
            const Spacer(), // Push icons to the right
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/twitter'); // Twitter page
              },
              child: Image.asset(
                'assets/images/X.png',
                fit: BoxFit.contain,
                height: 30,
              ),
            ),
            const SizedBox(width: 10.0),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/facebook'); // Facebook page
              },
              child: Image.asset(
                'assets/images/fb.png',
                fit: BoxFit.contain,
                height: 40,
              ),
            ),
          ],
        ),
      ),
      body: WebViewWidget(controller: controller), // Display Twitter page
    );
  }
}
