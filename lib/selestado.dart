import 'package:flutter/material.dart';
import 'package:sob_controle/riodejaneiro.dart';

class SelEstado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: new Text('Selecione seu estado'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Back',
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
      centerTitle: true,
      backgroundColor: Color(0xffec3237),
    ),
  body: SafeArea(
  child: Column(
  children: <Widget>[
  MyImage(
  imagePath: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Bandeira_do_estado_do_Rio_de_Janeiro.svg/2880px-Bandeira_do_estado_do_Rio_de_Janeiro.svg.png',
  ),
  Text("Rio de Janeiro")

  ]
  ),
  ),
  ),
  );
  }
  }

  class MyImage extends StatelessWidget {
  final Function() onTap;
  final String imagePath;

  const MyImage({
  Key key,
  @required this.onTap,
  @required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return GestureDetector(
  onTap: () {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => new RJ()));
  },
  child: Image.network(
  imagePath,
  height: 100.0,
  ),
  );
  }
  }