import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exemplo de Container")),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: const Center(
            child: Text('Container', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
