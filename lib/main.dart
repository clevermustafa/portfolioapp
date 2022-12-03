import 'package:flutter/material.dart';
import 'package:portfolioapp/information_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio App"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // push to next page
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const InformationPage()));
          },
          child: Text("Get Started"),
        ),
      ),
    );
  }
}

