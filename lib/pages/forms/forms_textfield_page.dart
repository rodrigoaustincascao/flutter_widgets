import 'package:flutter/material.dart';

class FormsTextfieldPage extends StatefulWidget {
  const FormsTextfieldPage({super.key});

  @override
  State<FormsTextfieldPage> createState() => _FormsTextfieldPageState();
}

class _FormsTextfieldPageState extends State<FormsTextfieldPage> {
  String texto = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forms com TextField')),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                onChanged: (String value) {
                  setState(() {
                    texto = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Text('Texto digitado: $texto'),
            ],
          ),
        ),
      ),
    );
  }
}
