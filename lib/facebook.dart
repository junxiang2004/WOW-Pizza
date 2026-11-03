import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Facebook extends StatefulWidget {
 const Facebook({super.key});


 @override
 State<Facebook> createState() => _FacebookState();
}


class _FacebookState extends State<Facebook> {
 late final WebViewController controller;


 @override
 void initState() {
   super.initState();
   controller = WebViewController()
     ..setJavaScriptMode(JavaScriptMode.unrestricted)
     ..loadRequest(Uri.parse('https://www.facebook.com'));
 }


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.orange,
       title: Row(
         children: [
           const Text(
             'WOW Pizza',
             style: TextStyle(fontSize: 25.0),
           ),
           const Spacer(), // Push icons to the right
           GestureDetector(
             onTap: () {
               Navigator.pushNamed(context, '/twitter'); // Navigate to Twitter page
             },
             child: Image.asset(
               'Images/twitter.png',
               fit: BoxFit.contain,
               height: 30,
             ),
           ),
           const SizedBox(width: 10.0),
           GestureDetector(
             onTap: () {
               Navigator.pushNamed(context, '/facebook'); // Navigate to Facebook page
             },
             child: Image.asset(
               'Images/facebook.png',
               fit: BoxFit.contain,
               height: 40,
             ),
           ),
         ],
       ),
     ),
     body: WebViewWidget(controller: controller), // Modern WebView
   );
 }
}
