import 'dart:convert';

class Cidade {
  final String cidade;
  final String estado;

  Cidade({required this.cidade, required this.estado});

  factory Cidade.fromJson(Map<String, dynamic> json) {
    return Cidade(
      cidade: json['cidade'] as String,
      estado: json['estado'] as String,
    );
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      cidade: map['cidade'] as String,
      estado: map['estado'] as String,
    );
  }
  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() {
    return {'cidade': cidade, 'estado': estado};
  }
}
