import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'About Page',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            Image.asset(
              'assets/images/about_image.jpg', // Replace with your image asset path
              width: 200, // Adjust the width as needed
            ),
            const SizedBox(height: 16),
            const Text(
              'Welcome to our app!',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'This app is designed to provide you with the latest news and updates.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
