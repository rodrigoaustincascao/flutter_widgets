import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mao_na_massa/pages/json/model/cidade.dart';

class JsonPage extends StatefulWidget {
  const JsonPage({super.key});

  @override
  State<JsonPage> createState() => _JsonPageState();
}

class _JsonPageState extends State<JsonPage> {
  var cidades = <Cidade>[];

  @override
  void initState() {
    super.initState();
    _loadCities();
  }

  Future<void> _loadCities() async {
    final cidadesJson = await rootBundle.loadString('assets/cidades.json');
    setState(() {
      var cidadeList = json.decode(cidadesJson);
      cidades = cidadeList.map<Cidade>((city) => Cidade.fromMap(city)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Json Page")),
      body: ListView.builder(
        itemCount: cidades.length,
        itemBuilder: (context, index) {
          var cidade = cidades[index];
          return ListTile(
            title: Text(cidade.cidade),
            subtitle: Text(cidade.estado),
          );
        },
      ),
    );
  }
}
