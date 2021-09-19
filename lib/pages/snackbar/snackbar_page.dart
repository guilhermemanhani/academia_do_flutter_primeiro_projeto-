import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  content: Text('OPA SNACK BAR'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text(
                'Simple Snackbar',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  content: Text('OPA SNACK BAR'),
                  backgroundColor: Colors.red,
                  action: SnackBarAction(
                    label: 'Desfazer',
                    onPressed: () => print('clicado'),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text(
                'Action Snackbar',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
