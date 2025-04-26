import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Material Banner')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(
                    content: Text("Simple Material Banner"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(
                            context,
                          ).hideCurrentMaterialBanner();
                        },
                        child: Text("Cancelar"),
                      ),
                    ],
                  ),
                );
                Future.delayed(Duration(seconds: 12), () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                });
              },
              child: Text("Simple Material Banner"),
            ),
          ],
        ),
      ),
    );
  }
}
