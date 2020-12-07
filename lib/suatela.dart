import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sob_controle/diario.dart';
import 'package:sob_controle/selestado.dart';
import 'package:sob_controle/sensorbat.dart';
import 'package:sob_controle/teste.dart';
import 'package:sob_controle/sensorbat.dart';
import 'my_flutter_app_icons.dart';
import 'notifica.dart';


class SuaTela extends StatelessWidget {
  static const String _title = 'Tela Principal';
  bool notificationstatus = false;

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
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            final Notifications noti = new Notifications();

            if(notificationstatus==false){
            noti.init();
            noti.showNotification(false);
            noti.scheduleWeeklyNotification();
            notificationstatus = true;
            print(notificationstatus);
            }
            else if(notificationstatus==true){
              noti.init();
              noti.cancelAllNotification();
              noti.showNotification(true);
              notificationstatus = false;
              print(notificationstatus);
            }
          },
          tooltip: 'Ativa Notificação',
          child: Icon(Icons.notifications),
          backgroundColor: Color(0xfff44336),
        ),
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
            leading: const Icon(MyFlutterApp.forum),
            title: Text('Diario Digital'),
            subtitle: Text(
                'Mantenha um diario de como você está se sentindo'
            ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => new Diario()));
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
        Card(
          child: ListTile(
              leading: const Icon(Icons.battery_unknown),
              title: Text('Nivel de bateria'),
              subtitle: Text(
                  'Acompanhe a carga da sua bateria e evite ansiedade'
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => new PlatformChannel()));
              }
          ),
        ),
      ],
    );
  }
}