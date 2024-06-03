import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.sizeOf(context);

    print('Largura ${mediaQuery.width}');
    print('Altura ${mediaQuery.height}');
    print('Orientação ${MediaQuery.maybeOrientationOf(context)}');
    print('Padding Top ${MediaQuery.paddingOf(context).top}');
    print('Tamanho AppBarDefault ${kToolbarHeight}');
    
    var appBar = AppBar(
      title: const Text('MediaQuery'),
    );

    final statusBar = MediaQuery.paddingOf(context).top; //mediaQuery.padding.top;
    //Tamanho da minha tela
    final heightBody = mediaQuery.height - statusBar - kToolbarHeight;

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              width: mediaQuery.width * .5,
              height: heightBody * .5,
            ),
            Container(
              color: Colors.blue,
              width: mediaQuery.width,
              height: heightBody * .5,
            )
          ],
          ),
      ),
    );
  }
}
