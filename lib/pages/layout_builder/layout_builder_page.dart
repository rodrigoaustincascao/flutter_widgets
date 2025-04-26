import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Layout Builder Page")),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth;
            final height = constraints.maxHeight;

            return Container(
              color: Colors.blue,
              width: width * 0.5,
              height: height * 0.5,
              child: Center(
                child: Text(
                  "Largura: ${width.toStringAsFixed(2)}\nAltura: ${height.toStringAsFixed(2)}",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
