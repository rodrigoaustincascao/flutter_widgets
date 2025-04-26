import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({super.key});

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  String categoria = "Categoria 1";

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forms')),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    labelText: 'Nome',

                    hintText: 'Digite seu nome',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.amber, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.amber, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.amber, width: 2),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red, width: 2),
                    ),
                    labelStyle: TextStyle(color: Colors.amber, fontSize: 20),
                    isDense: true,
                  ),

                  controller: _nameController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    hintText: 'Digite sua senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.amber, width: 2),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                DropdownButtonFormField<String>(
                  elevation: 10,
                  icon: Icon(Icons.arrow_back_ios),
                  value: categoria,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                  onChanged: (String? value) {
                    if (value != null) {
                      setState(() {
                        categoria = value;
                      });
                    }
                  },
                  items: [
                    DropdownMenuItem(
                      value: "Categoria 1",
                      child: Text('Opção 1'),
                    ),
                    DropdownMenuItem(
                      value: "Categoria 2",
                      child: Text('Opção 2'),
                    ),
                    DropdownMenuItem(
                      value: "Categoria 3",
                      child: Text('Opção 3'),
                    ),
                    DropdownMenuItem(
                      value: "Categoria 4",
                      child: Text('Opção 4'),
                    ),
                  ],
                  decoration: InputDecoration(
                    labelText: 'Selecione uma opção',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.amber, width: 2),
                    ),
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    var formValid = _formKey.currentState?.validate() ?? false;

                    if (formValid) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Formulário válido! (Name: ${_nameController.text})',
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Formulário inválido!')),
                      );
                    }
                  },
                  child: Text('Salvar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
