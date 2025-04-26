import 'package:flutter/material.dart';

class Stack2Page extends StatelessWidget {
  const Stack2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack 2')),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://www.hotelbrasil.com.br/wp-content/uploads/2019/11/dsc01802-768x576.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 48,
            left: 10,
            right: 10,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 8,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'São Lourenço - MG',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Conheça as atrações turísticas de São Lourenço MG. Localizada no Vale do Rio Verde no Sul de Minas Gerais, a cidade de São Lourenço está a 285 km do Rio de Janeiro, 310 km de São Paulo e a 410 km da capital mineira, Belo Horizonte. O município possui 42.372 habitantes, com uma ótima infraestrutura turística, hotéis de alta categoria, ótimos restaurantes, várias opções de lazer, entretenimento, clima ameno e várias atrações naturais.",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
