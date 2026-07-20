import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String name = "India";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog_App")),
      drawer: Drawer(),
      body: Center(child: Text("Welcome to $days days of Flutter $name")),
    );
  }
}
