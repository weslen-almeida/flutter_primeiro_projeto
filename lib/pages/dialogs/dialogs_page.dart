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
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Alert Dialog'),
                        content: const SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Deseja realmente salvar'),
                              )
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Cancelar')),
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Confirmar')),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Alert Dialog')),
            ElevatedButton(
              onPressed: () async {
                final selectTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                print('O horario selecionado foi ${selectTime}');
              },
              child: const Text('Timer Picker Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2010),
                  lastDate: DateTime(2024),
                );
                print('A data selecionada foi ${selectDate}');
              },
              child: const Text('Date Picker Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                showAboutDialog(
                  context: context,
                  applicationIcon: Icon(Icons.flutter_dash),
                );
              },
              child: const Text('About Dialog'),
            )
          ],
        ),
      ),
    );
  }
}
