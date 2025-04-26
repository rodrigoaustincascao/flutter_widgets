import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final corConstante = Colors.blue;
    final corRGB = const Color.fromARGB(255, 47, 96, 136);

    final corHexa = const Color(0xFF17599D);
    return Scaffold(
      appBar: AppBar(title: Text('Cores')),
      body: Column(
        children: [
          Container(width: 450, height: 150, color: corConstante),
          Container(width: 450, height: 150, color: corRGB),
          Container(width: 450, height: 150, color: corHexa),
        ],
      ),
    );
  }
}
