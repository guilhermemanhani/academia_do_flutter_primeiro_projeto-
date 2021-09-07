import 'package:academia_do_flutter_primeiro_projeto/pages/container/container_page.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/home/home_page.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/layout_builder/layour_builder_page.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/media_query/media_query_page.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/rows_columns/rows_column_page.dart';
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
      ),
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows_column': (_) => RowsColumnPage(),
        '/media_query': (_) => MediaQueryPage(),
        '/layout_builder': (_) => LayoutBuilderPage(),
      },
    );
  }
}
