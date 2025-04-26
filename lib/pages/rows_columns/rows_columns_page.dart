import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exemplo de Rows e Columns")),
      body: Container(
        child: Column(
          children: [
            Text('Elemento 1'),
            Text('Elemento 2'),
            Row(
              children: [
                Text('Elemento 1'),
                Text('Elemento 2'),
                Text('Elemento 3'),
                Text('Elemento 4'),
              ],
            ),
            Text('Elemento 3'),
            Text('Elemento 4'),
          ],
        ),
      ),
    );
  }
}
