import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Botoes Rotacao Texto Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotatedBox(
              quarterTurns: -1,
              child: const Text("Texto Rotacionado"),
            ),
            SizedBox(height: 50),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: Text("Salvar"),
            ),
            SizedBox(height: 50),
            IconButton(onPressed: () {}, icon: Icon(Icons.save)),
            SizedBox(height: 50),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.save),
              label: Text('Salvar'),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.red;
                  } else if (states.contains(WidgetState.pressed)) {
                    return Colors.amber;
                  }
                  return Colors.blue;
                }),
              ),
              child: Text('Salvar'),
            ),
            SizedBox(height: 50),
            InkWell(onTap: () {}, child: Text('InkWell')),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {},
              onVerticalDragStart: (posicao) => print('Start $posicao'),
              child: Text('GestureDetector'),
            ),
          ],
        ),
      ),
    );
  }
}
