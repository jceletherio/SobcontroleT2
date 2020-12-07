
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;


class Notifications{

  final FlutterLocalNotificationsPlugin flutterLocalNotificationPlugin =  FlutterLocalNotificationsPlugin();

  init(){
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation("America/Sao_Paulo"));
    //
    // this ic_launcher is a image in  android/app/src/main/res/drawable
    const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings("logo");
    final InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,


    );
    this.flutterLocalNotificationPlugin.initialize(initializationSettings);
  }

  Future<void> showNotification(bool s)async{
    const AndroidNotificationDetails androidPlatformChannelSpecifics  =AndroidNotificationDetails(
      "id",
      "Notificaativo-inativo",
      "Notifica se notificação está ativa ou inativa",
      priority: Priority.max,
      importance: Importance.max,
    );
    // channel IOS
    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      // iOS: ,
      // macOS: ,
    );
    if(s==false) {
      await this.flutterLocalNotificationPlugin.show(
        0,
        "Notificações ativadas",
        "Você será notificado semanalmente para seu teste de ansiedade",
        platformChannelSpecifics,
      );
    }
    else{
      await this.flutterLocalNotificationPlugin.show(
        0,
        "Notificações desativadas",
        "Você não será mais notificado semanalmente para seu teste de ansiedade",
        platformChannelSpecifics,
      );
    }
  }

  Future<void> scheduleWeeklyNotification()async{

    final details = NotificationDetails(
      android: AndroidNotificationDetails(
        "id",
        "Notificação semanal",
        "Lembra usuario de fazer seu teste toda semana",
        priority: Priority.max,
        importance: Importance.max,

      ),
    );


    await this.flutterLocalNotificationPlugin.zonedSchedule(
      0,
      "Hora de refazer seu teste de ansiedade",
      "seu ultimo teste foi semana passada",
      _netxinstanceofMonday(),
      details,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
      matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
    );

  }

  tz.TZDateTime _netxinstanceofMonday() {
    tz.TZDateTime scheduleDate = _nextIntanceOfTenAM();
    while(scheduleDate.weekday  != DateTime.monday ){
      scheduleDate = scheduleDate.add(Duration(days: 1));
    }
    return scheduleDate;

  }

  tz.TZDateTime _nextIntanceOfTenAM() {

    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduleDate = tz.TZDateTime(tz.local, now.year,now.month, now.day,10,30 );
    if( scheduleDate.isBefore(now)){
      scheduleDate = scheduleDate.add(Duration(days: 1));
    }
    return scheduleDate;
  }

  Future<void> cancelAllNotification() async {
    await flutterLocalNotificationPlugin.cancelAll();
  }


}