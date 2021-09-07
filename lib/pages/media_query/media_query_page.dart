import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query'),
      ),
      body: Column(
        children: [
          Container(
            height: heightBody * .5,
            color: Colors.red,
          ),
          Container(
            height: heightBody * .5,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
