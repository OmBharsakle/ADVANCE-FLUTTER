import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),),
      ),
    );
  }
}