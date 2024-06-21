import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Page'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.yellow,
            width: 300,
            height: 400,
          ),
           Container(
            color: Colors.blue,
            width: 150,
            height: 200,
          ),
           Container(
            color: Colors.white,
            width: 75,
            height: 90,
          ),
        ],
      ),
    );
  }
}