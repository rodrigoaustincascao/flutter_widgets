import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mao_na_massa/pages/dialogs/dialog_do_zero.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dialog Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (_) {
                    return DialogDoZero(context);
                  },
                );
              },
              child: Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: Text('Simple Dialog'),
                      children: [
                        Text('This is a simple dialog'),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Option 1'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Option 2'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('SimpleDialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    if (Platform.isIOS) {
                      return CupertinoAlertDialog(
                        title: Text('Alert Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("Deseja Salvar"),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(onPressed: () {}, child: Text("Cancelar")),
                          TextButton(onPressed: () {}, child: Text("Salvar")),
                        ],
                      );
                    } else {
                      return AlertDialog(
                        title: Text('Alert Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("Deseja Salvar"),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(onPressed: () {}, child: Text("Cancelar")),
                          TextButton(onPressed: () {}, child: Text("Salvar")),
                        ],
                      );
                    }
                  },
                );
              },
              child: Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                print('O horário selecionado foi $selectedTime');
              },
              child: Text('Time Picker'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2030),
                );
                print('A data selecionada foi $selectedDate');
              },
              child: Text('Date Picker'),
            ),
          ],
        ),
      ),
    );
  }
}
