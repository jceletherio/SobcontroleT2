import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlatformChannel extends StatefulWidget {
  @override
  _PlatformChannelState createState() => _PlatformChannelState();
}

class _PlatformChannelState extends State<PlatformChannel> {
  static const MethodChannel methodChannel =
  MethodChannel('samples.flutter.dev/battery');
  

  String _batteryLevel = '';
  String _batteryTip = '';
  

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    String batteryTip;
    try {
      final int result = await methodChannel.invokeMethod('getBatteryLevel');
      batteryLevel = 'Nivel de bateria: $result%.';
      if(result <= 30){
        batteryTip = 'Procure algum lugar para recarregar com calma';
      }
      else{
        batteryTip = 'Você tem muita bateria, fique tranquilo!';
      }
    } on PlatformException {
      batteryLevel = 'Nivel de bateria indisponivel';
    }
    setState(() {
      _batteryLevel = batteryLevel;
      _batteryTip = batteryTip;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: new Text('Seu nivel de bateria'),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              child: Text('Ver nivel de bateria'),

              onPressed: _getBatteryLevel,
            ),
            Text(_batteryLevel),
            Text(_batteryTip),
          ],
        ),
      ),
    ),
    );
  }
}

