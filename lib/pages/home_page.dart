import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "code pool";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to $days  of flutter by $name '),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
