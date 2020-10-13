import 'package:flutter/material.dart';

class RJ extends StatelessWidget {
  static const String _title = 'Rio de Janeiro';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: new Text(''),
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
              leading: Image.network('https://psicologogratuito.com.br/wp-content/uploads/2019/05/psicologo-gratuito-rj-400x440.jpg'),
              title: Text('Serviço de Psicologia Aplicada UERJ'),
              subtitle: Text(
                  'Endereço: Rua São Francisco Xavier, 524, SL. 10.006, BL. D - Maracanã\nTelefone: (21) 2334-0033\nHorário de Atendimento: Seg à Sex | 09:00h – 18:00h'
              ),

          ),
        ),
        Card(
          child: ListTile(
              leading: Image.network('https://psicologogratuito.com.br/wp-content/uploads/2019/05/psicologo-gratuito-ufrj.jpg'),
              title: Text('Serviço de Psicologia Aplicada UFRJ'),
              subtitle: Text(
                  'Endereço: Av. Pasteur, 250 – Botafogo\nTelefone: (21) 2295-8113'
              ),

          ),

        ),
        Card(
          child: ListTile(
              leading: Image.network('https://psicologogratuito.com.br/wp-content/uploads/2019/05/psicologo-gratuito-rj-uff.png'),
              title: Text('Serviço de Psicologia Aplicada UFF'),
              subtitle: Text(
                  'Campus do Gragoatá\nEndereço: Rua Professor Marcos Waldemar de Freitas Reis, São Domingos, Bloco N, 5º Andar - Niteroi\nTelefone: (21) 2629-2951 | 2629-2952\n'
                      'Campos dos Goytacazes\nEndereço: Avenida 28 de Março, 445 – Centro – Campos dos Goytacazes'
              ),

          ),
        ),
        Card(
          child: ListTile(
              leading: Image.network('https://psicologogratuito.com.br/wp-content/uploads/2019/05/psicologo-gratuito-puc-RJ.jpg'),
              title: Text('Serviço de Psicologia Aplicada PUC-RJ'),
              subtitle: Text(
                  'Endereço: Rua Marquês de São Vicente, 225, Edifício Cardeal Leme, Sala 201 - Gávea'
              ),
          ),
        ),
      ],
    );
  }
}
