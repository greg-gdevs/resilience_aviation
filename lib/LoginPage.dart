import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'auth.dart';
import 'ControlBox.dart';
import 'sign_in_google.dart';
import 'HomePage.dart';
import 'NewFlightPage.dart';

class LoginPage extends StatefulWidget {

  LoginPage({Key key, this.title, this.auth, this.onSignIn}) : super(key: key);

  final String title;
  final BaseAuth auth;
  final VoidCallback onSignIn;

  @override
  State<StatefulWidget> createState() {
    return new _LoginPageState();
  }
}

enum FormType {
  login,
  register
}

class _LoginPageState extends State<LoginPage>{
  

  final formKey = new GlobalKey<FormState>();

  String _email;
  String _password;
  //FormType _formType = FormType.login;
  String _authHint = '';



  bool validateAndSave(){
    final form = formKey.currentState;
    if(form.validate()){
      form.save();
      return true;

    }else{
      return false;

    }

  }

  void validateAndSubmit() async {

    if (validateAndSave()) {
      try {
        String userId = await widget.auth.signIn(_email, _password);
        print('after auth');
        setState(() {
          _authHint = 'Signed In\n\nUser id: $userId';
        });
        print('after set sate');
        widget.onSignIn();
        print('after widget onsignin');
      }
      catch (e) {
        setState(() {
          _authHint = 'Sign In Error\n\n${e.toString()}';
        });
        print(e);
      }
    } else {
      setState(() {
        _authHint = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('D9'),
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Form(
          key: formKey,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Email'),
                  validator: (value) => value.isEmpty ? 'Email cannot be empty' : null,
                  onSaved: (value) => _email = value,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) => value.isEmpty ? 'Password cannot be empty' : null,
                  onSaved: (value) => _password = value,
                ),
                new RaisedButton(
                    child: new Text('Login'),
                    onPressed: validateAndSubmit
                      //new ControlBox().cleanUp();
                ),
                _signInButton(),
              ],
            )
        ),
      ),
    );
  }

  Widget hintText() {
    return new Container(
      //height: 80.0,
        padding: const EdgeInsets.all(32.0),
        child: new Text(
            _authHint,
            key: new Key('hint'),
            style: new TextStyle(fontSize: 18.0, color: Colors.grey),
            textAlign: TextAlign.center)
    );
  }

  var signIn;
  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signIn = widget.auth.signInWithGoogle().whenComplete(() {
          print('sign in equals ' + signIn);
          if(signIn != null) {
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return NewFlightPage();
                  },
                ),
            );
          }else{
            return;
          }
        });
      },

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("images/google_logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}