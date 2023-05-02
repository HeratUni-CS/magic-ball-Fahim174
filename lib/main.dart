import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Magic Ball",
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ask Me Anything"),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue,
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  final random = Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$ballNumber.png'),
        onPressed: () {
          setState(() => ballNumber = (random.nextInt(5) + 1));
        },
      ),
    );
  }
}
