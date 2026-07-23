import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String name = "India";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog_App")),
      drawer: MyDrawer(),
      body: Center(child: Text("Welcome to $days days of Flutter $name")),
    );
  }
}
