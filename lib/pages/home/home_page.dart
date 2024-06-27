import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  botoes_rotacao_texto,
  single_child_scroll_view_page,
  listview_page,
  dialogs_page,
  snackbar,
  forms_page,
  cidades_page,
  stack_page,
  stack_page2,
  bottom_navigator_bar_page
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
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
                  case PopupMenuPages.single_child_scroll_view_page:
                    Navigator.of(context)
                        .pushNamed('/single_child_scroll_view_page');
                    break;
                  case PopupMenuPages.listview_page:
                    Navigator.of(context).pushNamed('/listview_page');
                    break;
                  case PopupMenuPages.dialogs_page:
                    Navigator.of(context).pushNamed('/dialogs_page');
                    break;
                  case PopupMenuPages.snackbar:
                    Navigator.of(context).pushNamed('/snackbar');
                    break;
                  case PopupMenuPages.forms_page:
                    Navigator.of(context).pushNamed('/forms_page');
                    break;
                  case PopupMenuPages.cidades_page:
                    Navigator.of(context).pushNamed('/cidades_page');
                    break;
                  case PopupMenuPages.stack_page:
                    Navigator.of(context).pushNamed('/stack_page');
                    break;
                  case PopupMenuPages.stack_page2:
                    Navigator.of(context).pushNamed('/stack_page2');
                    break;
                   case PopupMenuPages.bottom_navigator_bar_page:
                    Navigator.of(context).pushNamed('/bottom_navigator_bar_page');
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
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.single_child_scroll_view_page,
                    child: Text('single_child_scroll_view'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.listview_page,
                    child: Text('listview'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.dialogs_page,
                    child: Text('dialogs'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.snackbar,
                    child: Text('snackbar'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.forms_page,
                    child: Text('forms_page'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.cidades_page,
                    child: Text('cidades_pages'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.stack_page,
                    child: Text('stack_pages'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.stack_page2,
                    child: Text('stack_pages2'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.bottom_navigator_bar_page,
                    child: Text('bottom_navigator_bar_page'),
                  ),
                ];
              })
        ],
      ),
      body: Center(
        child: Container(
          height: mediaQuery.height * .3,
          child: const Column(
            children: [
              Text(
                'Primeiro Projeto em flutter',
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
              Text(
                'Aprendendo Widgets basicos',
                 style: TextStyle(fontSize: 18),
              ),
              Text(
                'Clica no menu acima e navegue nas opções',
                 style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
