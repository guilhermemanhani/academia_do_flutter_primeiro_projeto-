import 'package:academia_do_flutter_primeiro_projeto/pages/bottom_navigator/page1.dart';
import 'package:academia_do_flutter_primeiro_projeto/pages/bottom_navigator/page2.dart';
import 'package:flutter/material.dart';

class BottomNavigatorPage extends StatefulWidget {
  const BottomNavigatorPage({Key? key}) : super(key: key);

  @override
  _BottomNavigatorPageState createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  int indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigator Bar'),
      ),
      body: IndexedStack(
        index: indice,
        children: [
          Page1(),
          Page2(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: (index) {
          setState(() {
            indice = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard_customize_rounded,
            ),
            label: 'Pag1',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assistant_direction_sharp,
            ),
            label: 'Pag2',
          ),
        ],
      ),
    );
  }
}
