import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e rotação de texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.red,
                    child: const Text('Texto Rotacionado'),
                  ),
                ),
                const Icon(Icons.ac_unit_outlined)
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text('Botão de Texto'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.amber[100],
                padding: const EdgeInsets.all(15),
                minimumSize: const Size(50, 10),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: (() {}),
              icon: const Icon(Icons.exit_to_app),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.yellow,
                padding: const EdgeInsets.all(15),
                minimumSize: const Size(120, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.airplane_ticket),
              label: const Text('Botão com icone'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                iconColor: Colors.green[200],
                shadowColor: Colors.red,
                minimumSize: const Size(120, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Botão Customizado'),
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.blue),
                minimumSize: MaterialStateProperty.resolveWith(
                  (states) {
                    if(states.contains(MaterialState.pressed)) {
                      return const Size(180, 180);
                    } else if(states.contains(MaterialState.hovered)) {
                      return Size(150, 150);
                    }
                    return const Size(120, 50);
                  }
                ),
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if(states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    } else if(states.contains(MaterialState.hovered)) {
                      return Colors.amber;
                    }
                    return Colors.red;
                })
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (){},
              child: Text('InkWell'),
            ),
             const SizedBox(
              height: 15,
            ),
            GestureDetector(
              child: const Text('Gesture detector'),
              onTap: (){},
              onVerticalDragStart: (_) => print('Start $_'),
            ),
             const SizedBox(
              height: 15,
            ),
            Container(
              width: 150,
              height: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.red
                  ],
                ),
                borderRadius: BorderRadius.circular(50),
                boxShadow:[
                 BoxShadow(
                  blurRadius: 10,
                  offset: Offset(0, 5),
                  color: Colors.green,
                ),
              ]),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: (){},
                child: Center(
                  child: const Text(
                    'Criando o botão',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
