import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snacbars'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                      content: Text('Usario salvo com succeso'),
                      backgroundColor: Colors.green);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text('Simple Snackbar')),
            ElevatedButton(onPressed: () {
              final snackBar = SnackBar(
                      content: Text('Usario removido com succeso'),
                      backgroundColor: Colors.red,
                      action: SnackBarAction(label: 'Desfazer', onPressed: (){
                        print('Clicado!!');
                      }), 
                    );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }, child: Text('Action Snackbar')),
          ],
        ),
      ),
    );
  }
}
