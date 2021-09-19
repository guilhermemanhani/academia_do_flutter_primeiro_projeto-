import 'package:academia_do_flutter_primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/container/container_page.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/dialogs/dialogs_page.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/forms/forms_page.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/home/home_page.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/layout_builder/layour_builder_page.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/media_query/media_query_page.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/rows_columns/rows_column_page.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/scrolls/listview_page.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/scrolls/singlechildscrollview_page.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/snackbar/snackbar_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      DevicePreview(
        // enabled: !kReleaseMode,
        enabled: false,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColorLight: Colors.red,
        primaryColorDark: Colors.amberAccent,
        fontFamily: 'Roboto',
      ),
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows_column': (_) => RowsColumnPage(),
        '/media_query': (_) => MediaQueryPage(),
        '/layout_builder': (_) => LayoutBuilderPage(),
        '/botoes_rotacao_texto': (_) => BotoesRotacaoTextoPage(),
        '/scrollview': (_) => SinglechildscrollviewPage(),
        '/listview': (_) => ListviewPage(),
        '/dialogs': (_) => DialogsPage(),
        '/snackbarPage': (_) => SnackbarPage(),
        '/forms': (_) => FormsPage(),
      },
    );
  }
}
