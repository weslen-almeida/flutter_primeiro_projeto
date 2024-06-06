import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  botoes_rotacao_texto,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.green,
        actions: [
          PopupMenuButton<PopupMenuPages>(
              tooltip: 'Selecione o menu',
              onSelected: (PopupMenuPages valueSelected) {
                switch (valueSelected) {
                  case PopupMenuPages.container:
                    Navigator.of(context).pushNamed('/container');
                    break;
                  case PopupMenuPages.rows_columns:
                    Navigator.of(context).pushNamed('/rows_columns');
                    break;
                  case PopupMenuPages.media_query:
                    Navigator.of(context).pushNamed('/media_query');
                    break;
                  case PopupMenuPages.layout_builder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
                   case PopupMenuPages.botoes_rotacao_texto:
                  Navigator.of(context).pushNamed('/botoes_rotacao_texto');
                  break;
                }
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<PopupMenuPages>>[
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.container,
                    child: Text('Container'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.rows_columns,
                    child: Text('rows_columns'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.media_query,
                    child: Text('media_query'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.layout_builder,
                    child: Text('layout_builder'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.botoes_rotacao_texto,
                    child: Text('botoes_rotacao_texto'),
                  ),
                ];
              })
        ],
      ),
      body: Container(),
    );
  }
}
