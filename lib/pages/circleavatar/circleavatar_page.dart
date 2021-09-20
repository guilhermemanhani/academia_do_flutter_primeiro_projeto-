import 'package:flutter/material.dart';

class CircleavatarPage extends StatelessWidget {
  const CircleavatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: Row(
        children: [
          ImageAvatar(
            urlImage:
                'https://cdn.domtotal.com/img/noticias/2019-12/1407642_429249.jpg',
          ),
          ImageAvatar(
            urlImage:
                'https://cdn.domtotal.com/img/noticias/2019-12/1407642_429249.jpg',
          ),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({Key? key, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.black], begin: Alignment.topCenter),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(5)),
              child: Text(
                'AO VIVO',
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
