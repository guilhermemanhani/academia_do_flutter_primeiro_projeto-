import 'package:flutter/material.dart';

class SinglechildscrollviewPage extends StatelessWidget {
  const SinglechildscrollviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll single'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.grey,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.black,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.grey,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
