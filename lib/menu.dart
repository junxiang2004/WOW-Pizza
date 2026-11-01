import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Text('Pizza', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              MenuCard(name: 'TestPizza1', imagePath: 'assets/images/PlaceholderPizza.png', price: '\$10.00', description: 'This is a test Pizza1'),
              MenuCard(name: 'TestPizza2', imagePath: 'assets/images/PlaceholderPizza.png', price: '\$11.00', description: 'This is a test Pizza2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
              MenuCard(name: 'TestPizza3', imagePath: 'assets/images/PlaceholderPizza.png', price: '\$12.00', description: 'This is a test Pizza3'),
              Text('Fries', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              MenuCard(name: 'TestFries1', imagePath: 'assets/images/PlaceholderFries.png', price: '\$5.00', description: 'This is a test Fries1'),
              MenuCard(name: 'TestFries2', imagePath: 'assets/images/PlaceholderFries.png', price: '\$6.00', description: 'This is a test Fries2'),
            ]
        ),
      )
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
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(imagePath, width: 100, height: 100),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name),
                  Text('\n'),
                  Text(price)
                ]
              ),
              SizedBox(width: 20),
              Expanded(
                  child: Text(description)
              ),
            ],
          )
      ),
    );
  }
}