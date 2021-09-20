import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_column,
  media_query,
  layout_builder,
  botoes_rotacao_texto,
  scrollview,
  listview,
  dialogs,
  snackBar,
  forms,
  cidades,
  stack,
  stack2,
  bottombar,
  avatarPage,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
        ),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            tooltip: 'Selecione um item',
            icon: Icon(Icons.restaurant_menu),
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rows_column:
                  Navigator.of(context).pushNamed('/rows_column');
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
                case PopupMenuPages.scrollview:
                  Navigator.of(context).pushNamed('/scrollview');
                  break;
                case PopupMenuPages.listview:
                  Navigator.of(context).pushNamed('/listview');
                  break;
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
                case PopupMenuPages.snackBar:
                  Navigator.of(context).pushNamed('/snackbarPage');
                  break;
                case PopupMenuPages.forms:
                  Navigator.of(context).pushNamed('/forms');
                  break;
                case PopupMenuPages.cidades:
                  Navigator.of(context).pushNamed('/cidades');
                  break;
                case PopupMenuPages.stack:
                  Navigator.of(context).pushNamed('/stack');
                  break;
                case PopupMenuPages.stack2:
                  Navigator.of(context).pushNamed('/stack2');
                  break;
                case PopupMenuPages.bottombar:
                  Navigator.of(context).pushNamed('/bottombar');
                  break;
                case PopupMenuPages.avatarPage:
                  Navigator.of(context).pushNamed('/avatarPage');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rows_column,
                  child: Text('Rows & Columns'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.media_query,
                  child: Text('Media query'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layout_builder,
                  child: Text('Layout builder'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoes_rotacao_texto,
                  child: Text('Botoes e rotacao de texto'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrollview,
                  child: Text('Scroll'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.listview,
                  child: Text('ListView'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text('Dialogs'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.snackBar,
                  child: Text('SnackBar'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.forms,
                  child: Text('forms'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.cidades,
                  child: Text('cidades'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack,
                  child: Text('stack'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack2,
                  child: Text('stack2'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.bottombar,
                  child: Text('bottombar'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.avatarPage,
                  child: Text('avatarPage'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
