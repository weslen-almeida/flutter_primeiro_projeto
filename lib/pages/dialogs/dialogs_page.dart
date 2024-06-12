import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (_) {
                        return DialogCustom(context);
                      });
                },
                child: const Text('Dialog Custom')),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Simple Dialog'),
                        contentPadding: const EdgeInsets.all(10),
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Titulo'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Fechar'),
                          )
                        ],
                      );
                    });
              },
              child: const Text('Simple Dialog'),
            ),
            ElevatedButton(onPressed: () {
              showDialog(
                context: context, 
                builder: (context){
                  return AlertDialog(
                    title: const Text('Alert Dialog'),
                    content: const SingleChildScrollView(
                      child: ListBody(
                        children: [
                          Padding(padding: EdgeInsets.all(10.0),
                          child: Text('Deseja realmente salvar'),
                          )
                        ],),
                    ),
                    actions: [
                      TextButton(onPressed: (){}, child: const Text('Cancelar')),
                      TextButton(onPressed: (){}, child: const Text('Confirmar')),
                    ],
                  );
                },
                );
            }, child: Text('Alert Dialog')),
            ElevatedButton(
                onPressed: () {}, child: Text('Timer Picker Dialog')),
            ElevatedButton(onPressed: () {}, child: Text('Date Picker Dialog')),
          ],
        ),
      ),
    );
  }
}
