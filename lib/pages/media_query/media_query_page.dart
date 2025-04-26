import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    print('Largura ${mediaQuery.size.width}');
    print('Altura ${mediaQuery.size.height}');
    print(
      'Largura ${mediaQuery.orientation == Orientation.portrait ? 'Retrato' : 'Paisagem'}',
    );
    print('Escala ${mediaQuery.textScaleFactor}');
    print('Densidade ${mediaQuery.devicePixelRatio}');
    print('Status Bar ${mediaQuery.padding.top}');
    print("AppBarDefault $kToolbarHeight");

    final statusBar = mediaQuery.padding.top;
    final appBarDefault = kToolbarHeight;
    final heightBody = mediaQuery.size.height - (statusBar + appBarDefault);
    print("Altura do Body $heightBody");

    return Scaffold(
      appBar: AppBar(title: const Text("Media Query Page")),
      body: Center(),
    );
  }
}
