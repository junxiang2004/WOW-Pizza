import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu'), backgroundColor: Colors.redAccent),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Pizza',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            MenuCard(
              name: 'Vegetable Pizza',
              imagePath: 'assets/images/VeggiePizza.png',
              price: '\$10.00',
              description: 'This is a Vegetable Pizza, taste very good',
            ),
            MenuCard(
              name: 'Cheese Pizza',
              imagePath: 'assets/images/CheesePizza.png',
              price: '\$12.00',
              description: 'This is a Cheese Pizza, taste really good~~',
            ),
            MenuCard(
              name: 'Chicken Pizza',
              imagePath: 'assets/images/ChickenPizza.png',
              price: '\$14.00',
              description:
                  'This is a Chicken Pizza, taste good until no word to say!!!',
            ),
            Text(
              'Fries',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            MenuCard(
              name: 'French Fries',
              imagePath: 'assets/images/Fries.png',
              price: '\$5.00',
              description: 'This is a French Fires, just kinda ok jak',
            ),
            MenuCard(
              name: 'Curly Fries',
              imagePath: 'assets/images/CurlyFries.webp',
              price: '\$7.00',
              description: 'This is a Curly Fries, this one is really cook!',
            ),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final String price;
  final String description;

  const MenuCard({
    super.key,
    required this.name,
    required this.imagePath,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.orangeAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 100, height: 100),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(name), Text('\n'), Text(price)],
            ),
            SizedBox(width: 20),
            Expanded(child: Text(description)),
          ],
        ),
      ),
    );
  }
}
