import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Botões e Rotação de Texto',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Text('Guilherme Manhani'),
                ),
                Icon(Icons.ac_unit)
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: TextButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.all(10),
                minimumSize: Size(150, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: ElevatedButton.styleFrom(
                elevation: 10,
                primary: Colors.red,
                shadowColor: Colors.red,
                minimumSize: Size(150, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.airplane_ticket),
              label: Text('Modo aviao'),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.green),
                minimumSize: MaterialStateProperty.all(Size(120, 50)),
                // MaterialStateProperty.resolveWith(
                //   (states) {
                //     if (states.contains(MaterialState.pressed)) {
                //       return Size(150, 150);
                //     } else if (states.contains(MaterialState.hovered)) {
                //       return Size(180, 180);
                //     }
                //     return Size(120, 120);
                //   },
                // ),
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.green;
                    } else if (states.contains(MaterialState.pressed)) {
                      return Colors.blue;
                    }
                    return Colors.yellow;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {},
              child: Text('InkWell'),
            ),
            GestureDetector(
              child: Text('Gesture detector'),
              onTap: () => print('Gesture Clicado'),
              onVerticalDragStart: (_) => print('start $_'),
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blueGrey,
                    Colors.greenAccent,
                  ],
                ),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    color: Colors.red,
                  ),
                ],
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: Center(
                  child: Text(
                    'Botao Personalizado',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
