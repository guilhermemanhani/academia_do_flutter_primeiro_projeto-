import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
          );
        },
        // ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, index) {
          print('Carregando o indice $index');
          return ListTile(
            title: Text(
              'O item $index',
            ),
            subtitle: Text('Flutter é TOP'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://sm.ign.com/t/ign_br/screenshot/default/goku_surh.1280.png'),
            ),
            trailing: Icon(Icons.delete),
          );
        },
      ),
    );
  }
}
