import 'package:flutter/material.dart';

class DialogDoZero extends Dialog {
  DialogDoZero(BuildContext context)
    : super(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: 300,
          height: 300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Dialog'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Fechar Dialog'),
              ),
            ],
          ),
        ),
      );
}
