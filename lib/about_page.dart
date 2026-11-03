import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // PIZZA LOGO
            const Center(child: Text('🍕', style: TextStyle(fontSize: 90))),

            const SizedBox(height: 20),

            // WELCOME MESSAGE
            const Text(
              'Welcome to WOW Pizza!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            // ABOUT RESTAURANT
            const Text(
              'About Our Restaurant',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            const Text(
              'WOW Pizza provides delicious food at '
              'affordable prices. We aim to serve '
              'fresh and tasty meals to our customers.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17),
            ),

            const SizedBox(height: 30),

            // WHAT WE OFFER
            const Text(
              'What We Offer',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            // DELICIOUS PIZZA - EXPANDABLE CARD
            Card(
              child: ExpansionTile(
                leading: const Text('🍕', style: TextStyle(fontSize: 35)),

                title: const Text(
                  'Delicious Pizza',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                subtitle: const Text('Tap to view pizza details'),

                children: [
                  const Divider(),

                  const Padding(
                    padding: EdgeInsets.all(15),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          'Chicken Cheese Pizza',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 10),

                        Text(
                          'Freshly baked pizza with '
                          'melted cheese, chicken '
                          'and tomato sauce.',
                          style: TextStyle(fontSize: 16),
                        ),

                        SizedBox(height: 15),

                        Text(
                          'Ingredients:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 10),

                        Text('• Pizza dough'),
                        Text('• Tomato sauce'),
                        Text('• Mozzarella cheese'),
                        Text('• Chicken'),

                        SizedBox(height: 15),

                        Text(
                          'Price: RM20',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // FOOD MENU - CLICKABLE CARD
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.restaurant_menu,
                  color: Colors.orange,
                  size: 35,
                ),

                title: const Text(
                  'Food Menu',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                subtitle: const Text('Tap here to explore our food selection'),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.orange,
                ),

                onTap: () {
                  Navigator.pushNamed(context, '/menu');
                },
              ),
            ),

            const SizedBox(height: 30),

            // ABOUT APPLICATION
            const Text(
              'About This Application',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              'WOW Pizza is a restaurant application '
              'developed using Flutter and Dart. '
              'Users can explore the restaurant menu '
              'and view food information easily.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17),
            ),

            const SizedBox(height: 30),

            // BACK BUTTON
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },

              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
