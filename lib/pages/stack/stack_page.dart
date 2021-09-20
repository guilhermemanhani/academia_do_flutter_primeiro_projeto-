import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.green,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              color: Colors.red,
              width: 300,
              height: 300,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: Colors.pink,
              width: 150,
              height: 150,
            ),
          ),
          Positioned(
            right: 140,
            bottom: 10,
            child: Container(
              color: Colors.black,
              width: 150,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
