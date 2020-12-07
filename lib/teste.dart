import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Teste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pagina teste ansiedade',
      home: _SizedBoxExample(),
      );
  }
}

class _SizedBoxExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Iniciar Teste'),
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
      body: Center(
        child: Column(
          children:<Widget>[
          RaisedButton(
          onPressed: _launchURL,
          child: Text('Ir para teste'),
        ),
      ]
      ),
      ),
    );
  }
}

_launchURL() async {
  final url = 'https://jceletherio.github.io/QuizSobControle/';

  if (await canLaunch(url)) {
    await launch(url.toString());
  } else {
    print('Could not launch $url');
  }
}
