import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Circle Avatar')),
      body: Container(
        width: 100,
        height: 100,
        child: ImageAvatar(
          urlImage:
              'https://raw.githubusercontent.com/ManasMalla/DashingThrough/main/Resources/faq-hero.png',
        ),
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(backgroundImage: NetworkImage(urlImage)),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.red,
            ),

            child: Text('AO VIVO', style: TextStyle(fontSize: 8)),
          ),
        ),
      ],
    );
  }
}
