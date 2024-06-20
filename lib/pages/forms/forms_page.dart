import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({super.key});

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  // String texto = "";
  final formKey = GlobalKey<FormState>();
  final  nameEC = TextEditingController();
  final  senhaEC = TextEditingController();
  String categoria = "cat1";

  @override
  void dispose() {
    // TODO: Descartar depois de sair da tela. Boa pratica
    nameEC.dispose();
    senhaEC.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulários'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // TextField(
                //   onChanged: (String value) {
                //     setState(() {
                //       texto = value;
                //     });
                //   },
                // ),
                // const SizedBox(height: 10,),
                // Text('Texto digitado: $texto'),
                TextFormField(
                  controller: nameEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Nome Completo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.green)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.green)
                    ),
                     focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.green)
                    ),
                     errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.red)
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 15,
                    ),
                    isDense: true,
                  ),
                  validator: (String? value) {
                    if(value == null || value.isEmpty) {
                      return 'Campo não preenchido';
                    }
                  },
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: senhaEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.green)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.green)
                    ),
                     focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.green)
                    ),
                     errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.red)
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  obscureText: true,
                  validator: (String? value) {
                    if(value == null || value.isEmpty) {
                      return 'Campo não preenchido';
                    }
                  },
                ),
                const SizedBox(height: 20,),
                DropdownButtonFormField<String>(
                  value: categoria,
                  elevation: 20,
                  icon: const Icon(Icons.arrow_back_ios),
                  decoration: InputDecoration(
                    labelText: 'Categorias',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.green)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.green)
                    ),
                     focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.green)
                    ),
                     errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.red)
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  validator: (String? value) {
                    if(value == null || value.isEmpty) {
                      return 'Categoria não selecionada';
                    }
                  },
                  onChanged: (String? newValue){
                    if(newValue != null) {
                      categoria = newValue;
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'cat1',
                      child: Text('Categoria 1'),
                    ),
                    DropdownMenuItem(
                      value: 'cat2',
                      child: Text('Categoria 2'),
                    ),
                    DropdownMenuItem(
                      value: 'cat3',
                      child: Text('Categoria 3'),
                    ),
                  ], 
                ),
                const SizedBox(height: 20,),
                ElevatedButton(onPressed: () {
                  var formValid = formKey.currentState?.validate() ?? false;
                  var message = 'Formulário Inválido';
                  if(formValid) {
                    message = 'Formulário Válido (Name: ${nameEC.text}, Senha: ${senhaEC.text} e Categoria: ${categoria})';
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(message)));
                }, child: const Text('Salvar'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
