import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sob_controle/selestado.dart';
import 'package:sob_controle/teste.dart';
import 'my_flutter_app_icons.dart';


class SuaTela extends StatelessWidget {
  static const String _title = 'Tela Principal';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: new Text('Menu'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.lock),
              tooltip: 'Logout',
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          centerTitle: true,
          backgroundColor: Color(0xffec3237),
        ),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  <Widget>[

        Card(
          child: ListTile(
            leading: const Icon(MyFlutterApp.quiz),
            title: Text('Teste seu nivel de ansiedade'),
            subtitle: Text(
                'Saiba seu nivel de ansiedade agora'
            ),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => new Teste()));
          }
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(MyFlutterApp.history),
            title: Text('Seu historico'),
            subtitle: Text(
                'Acompanhe seu nivel de ansiedade nos testes'
            ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => new SuaTela()));
              }
          ),

        ),
        Card(
          child: ListTile(
            leading: const Icon(MyFlutterApp.forum),
            title: Text('Forum'),
            subtitle: Text(
                'Discuta sobre ansiedade no forum'
            ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => new SuaTela()));
              }
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(MyFlutterApp.help),
            title: Text('Ajuda psicologica gratuita'),
            subtitle: Text(
                'Saiba aonde encontrar ajuda psicologica gratis perto de você'
            ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => new SelEstado()));
              }
          ),
        ),
      ],
    );
  }
}