import 'package:flutter/material.dart';



/// This is the main application widget.
class Teste extends StatelessWidget {
  static const String _title = 'Teste Ansiedade';


  void _handleRadioValueChange1(int value) {

  }

  void _handleRadioValueChange2(int value) {

  }

  void _handleRadioValueChange3(int value) {

  }

  void _handleRadioValueChange4(int value) {

  }

  void _handleRadioValueChange5(int value) {

  }

  @override
  Widget build(BuildContext context) {
  return new MaterialApp(
    title: _title,
    home: new Scaffold(
      appBar: AppBar(
        title: new Text('Teste ansiedade'),
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
  body: new Container(
  padding: EdgeInsets.all(5.0),
  child: new Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  new Padding(
  padding: new EdgeInsets.all(5.0),
  ),
    new Text(
      'Sentiu na ultima semana dormencia ou formigamento?',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
    ),
    new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        new Radio(
          value: 0,

          onChanged: _handleRadioValueChange1,
        ),
        new Text(
          'Não',
          style: new TextStyle(fontSize: 16.0),
        ),
        new Radio(
          value: 1,
          onChanged: _handleRadioValueChange1,
        ),
        new Text(
          'Leve',
          style: new TextStyle(
            fontSize: 16.0,
          ),
        ),
        new Radio(
          value: 2,
          onChanged: _handleRadioValueChange1,
        ),
        new Text(
          'Moderado',
          style: new TextStyle(fontSize: 16.0),
        ),
        new Radio(
          value: 3,
          onChanged: _handleRadioValueChange1,
        ),
        new Text(
          'Grave',
          style: new TextStyle(fontSize: 16.0),
        ),
      ],

    ),
    new Divider(height: 5.0, color: Colors.black),
    new Padding(
      padding: new EdgeInsets.all(5.0),
    ),
    new Text(
      'Sentiu na ultima semana sensação de calor?',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
    ),
    new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        new Radio(
          value: 0,

          onChanged: _handleRadioValueChange1,
        ),
        new Text(
          'Não',
          style: new TextStyle(fontSize: 16.0),
        ),
        new Radio(
          value: 1,
          onChanged: _handleRadioValueChange1,
        ),
        new Text(
          'Leve',
          style: new TextStyle(
            fontSize: 16.0,
          ),
        ),
        new Radio(
          value: 2,
          onChanged: _handleRadioValueChange1,
        ),
        new Text(
          'Moderado',
          style: new TextStyle(fontSize: 16.0),
        ),
        new Radio(
          value: 3,
          onChanged: _handleRadioValueChange1,
        ),
        new Text(
          'Grave',
          style: new TextStyle(fontSize: 16.0),
        ),
      ],

    ),
    new Divider(height: 5.0, color: Colors.black),
    new Padding(
    padding: new EdgeInsets.all(5.0),
    ),
    new Text(
    'Sentiu na ultima semana tremores nas pernas?',
    style: new TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    ),
    ),
    new Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[

    new Radio(
    value: 0,

    onChanged: _handleRadioValueChange1,
    ),
    new Text(
    'Não',
    style: new TextStyle(fontSize: 16.0),
    ),
    new Radio(
    value: 1,
    onChanged: _handleRadioValueChange1,
    ),
    new Text(
    'Leve',
    style: new TextStyle(
    fontSize: 16.0,
    ),
    ),
    new Radio(
    value: 2,
    onChanged: _handleRadioValueChange1,
    ),
    new Text(
    'Moderado',
    style: new TextStyle(fontSize: 16.0),
    ),
    new Radio(
    value: 3,
    onChanged: _handleRadioValueChange1,
    ),
    new Text(
    'Grave',
    style: new TextStyle(fontSize: 16.0),
    ),
    ],
    ),
    new Divider(height: 5.0, color: Colors.black),
    new Padding(
    padding: new EdgeInsets.all(5.0),
    ),
    new Text(
    'Sentiu na ultima semana incapaz de relaxar?',
    style: new TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    ),
    ),
    new Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[

    new Radio(
    value: 0,

    onChanged: _handleRadioValueChange1,
    ),
    new Text(
    'Não',
    style: new TextStyle(fontSize: 16.0),
    ),
    new Radio(
    value: 1,
    onChanged: _handleRadioValueChange1,
    ),
    new Text(
    'Leve',
    style: new TextStyle(
    fontSize: 16.0,
    ),
    ),
    new Radio(
    value: 2,
    onChanged: _handleRadioValueChange1,
    ),
    new Text(
    'Moderado',
    style: new TextStyle(fontSize: 16.0),
    ),
    new Radio(
    value: 3,
    onChanged: _handleRadioValueChange1,
    ),
    new Text(
    'Grave',
    style: new TextStyle(fontSize: 16.0),
    ),
    ],
    ),
    new Divider(height: 5.0, color: Colors.black),
    new Padding(
    padding: new EdgeInsets.all(5.0),
    ),
    new Text(
    'Sentiu na ultima semana medo de acontecer o pior?',
    style: new TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    ),
    ),
    new Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[

    new Radio(
    value: 0,

    onChanged: _handleRadioValueChange1,
    ),
    new Text(
    'Não',
    style: new TextStyle(fontSize: 16.0),
    ),
    new Radio(
    value: 1,
    onChanged: _handleRadioValueChange1,
    ),
    new Text(
    'Leve',
    style: new TextStyle(
    fontSize: 16.0,
    ),
    ),
    new Radio(
    value: 2,
    onChanged: _handleRadioValueChange1,
    ),
    new Text(
    'Moderado',
    style: new TextStyle(fontSize: 16.0),
    ),
    new Radio(
    value: 3,
    onChanged: _handleRadioValueChange1,
    ),
    new Text(
    'Grave',
    style: new TextStyle(fontSize: 16.0),
    ),
    ],
    ),
    new Divider(height: 5.0, color: Colors.black),
    new Padding(
      padding: new EdgeInsets.all(5.0),
    ),
    new Text(
      'Sentiu na ultima semana atordoado ou tonto?',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
    ),
    new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        new Radio(
          value: 0,

          onChanged: _handleRadioValueChange1,
        ),
        new Text(
          'Não',
          style: new TextStyle(fontSize: 16.0),
        ),
        new Radio(
          value: 1,
          onChanged: _handleRadioValueChange1,
        ),
        new Text(
          'Leve',
          style: new TextStyle(
            fontSize: 16.0,
          ),
        ),
        new Radio(
          value: 2,
          onChanged: _handleRadioValueChange1,
        ),
        new Text(
          'Moderado',
          style: new TextStyle(fontSize: 16.0),
        ),
        new Radio(
          value: 3,
          onChanged: _handleRadioValueChange1,
        ),
        new Text(
          'Grave',
          style: new TextStyle(fontSize: 16.0),
        ),
      ],
    ),
  new Divider(
  height: 5.0,
  color: Colors.black,
  ),
  new Padding(
  padding: new EdgeInsets.all(8.0),
  ),
  new RaisedButton(
  child: new Text(
  'Check Final Score',

  style: new TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
  color: Colors.white),
  ),
  color: Theme.of(context).accentColor,
  shape: new RoundedRectangleBorder(
  borderRadius:
  new BorderRadius.circular(
  20.0)),
  ),
  new Padding(
  padding: EdgeInsets.all(4.0),
  ),
  new RaisedButton(
  onPressed: resetSelection,
  child: new Text(
  'Reset Selection',
  style: new TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: 16.0,
  color: Colors.white),
  ),
  color: Theme.of(context).accentColor,
  shape: new RoundedRectangleBorder(
  borderRadius:
  new BorderRadius.circular(
  20.0)),
  )
  ],
  ),
  ),
  ),
  );
  }

  void resetSelection() {
  _handleRadioValueChange1(-1);
  _handleRadioValueChange2(-1);
  _handleRadioValueChange3(-1);
  _handleRadioValueChange4(-1);
  _handleRadioValueChange5(-1);

  }
  }