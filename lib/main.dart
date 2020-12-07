import 'package:flutter/material.dart';
import 'package:sob_controle/notifica.dart';
import 'package:sob_controle/suatela.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';


class LoginBase with Store {
  @observable
  String email;
  @observable
  String password;
  @action
  bool valid() {
    if(email.isEmpty==false && password.isEmpty==false){
      if(email.contains('@')==true && email.contains('.com')){
        return true;
      }
      return false;
    }
    else{
      return false;
    }
  }
}



 main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sob Controle Login',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Sob Controle'),
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _login = LoginBase();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    final emailField = TextField(
      controller: emailController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          border: OutlineInputBorder(),
          icon: Icon(Icons.perm_identity),
          labelText: 'Usuario',
      )

    );
    final passwordField = TextField(
      controller: passwordController,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          border: OutlineInputBorder(),
          icon: Icon(Icons.lock),
          labelText: 'Senha',
      )

    );
    final loginButon = Material(

      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xfff44336),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {

          _login.email = emailController.text;

          _login.password = passwordController.text;

          if(_login.valid()==true) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => new SuaTela()));
          }
          else{}
    },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 200.0,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 5.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 25.0,
                ),
                loginButon,
                SizedBox(
                  height: 25.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

