import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),

      body: Column(
        children: [
          Center(
            child: Container(child: Icon(Icons.person_3_sharp, size: 150)),
          ),
        ],
      ),
    );
  }
}
