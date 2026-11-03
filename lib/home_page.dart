import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F0),
      appBar: AppBar(
        title: const Text('WOW Pizza'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ChickenPizza.png',
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),

              const Text(
                'Welcome to WOW Pizza! Have A Amazing Journey With Pizza! ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),

              const Text(
                'Fresh, Hot & Delicious!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              SizedBox(
                width: 250,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                  child: const Text('Our Menu'),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: 250,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/about');
                  },
                  child: const Text('About Us'),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: 250,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                  child: const Text('Contact Us'),
                ),
              ),

              const SizedBox(height: 45),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    tooltip: 'Twitter/X',
                    onPressed: () {
                      Navigator.pushNamed(context, '/twitter');
                    },
                    icon: Image.asset(
                      'assets/images/X.png',
                      width: 40,
                      height: 40,
                    ),
                  ),

                  IconButton(
                    tooltip: 'Facebook',
                    onPressed: () {
                      Navigator.pushNamed(context, '/facebook');
                    },
                    icon: Image.asset(
                      'assets/images/fb.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
