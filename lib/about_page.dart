
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Colors.green,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const Text(
              '🍕',
              style: TextStyle(fontSize: 90),
            ),

            const SizedBox(height: 20),

            const Text(
              'Welcome to WOW Pizza!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            const Text(
              'About Our Restaurant',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'WOW Pizza serves delicious food at '
              'affordable prices. Our goal is to '
              'provide fresh and tasty meals '
              'for our customers.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17),
            ),

            const SizedBox(height: 30),

            const Text(
              'Our Food Menu',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            const Card(
              child: ListTile(
                leading: Text(
                  '🍝',
                  style: TextStyle(fontSize: 30),
                ),
                title: Text('Pasta'),
                subtitle: Text('Tomato sauce and cheese'),
                trailing: Text('RM15'),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Text(
                  '🍕',
                  style: TextStyle(fontSize: 30),
                ),
                title: Text('Pizza'),
                subtitle: Text('Cheese and chicken'),
                trailing: Text('RM20'),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Text(
                  '🍟',
                  style: TextStyle(fontSize: 30),
                ),
                title: Text('Fries'),
                subtitle: Text('Crispy fries with ketchup'),
                trailing: Text('RM8'),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'About This Application',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'This application is developed using '
              'Flutter and Dart. Customers can view '
              'different food items, descriptions '
              'and prices easily.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Menu'),
            ),
          ],
        ),
      ),
    );
  }
}
