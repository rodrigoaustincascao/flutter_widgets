import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack')),
      body: Stack(
        children: [
          Align(child: Container(color: Colors.green, width: 500, height: 500)),
          Align(child: Container(color: Colors.blue, width: 300, height: 300)),
          Align(child: Container(color: Colors.red, width: 150, height: 150)),
        ],
      ),
    );
  }
}
