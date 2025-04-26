import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SnackBar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Simple SnackBar"),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Text("Simple SnackBar"),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Simple SnackBar"),

                    action: SnackBarAction(
                      label: "Undo",
                      onPressed: () {
                        print('Clicado');
                      },
                    ),
                  ),
                );
              },
              child: Text("Action SnackBar"),
            ),
          ],
        ),
      ),
    );
  }
}
