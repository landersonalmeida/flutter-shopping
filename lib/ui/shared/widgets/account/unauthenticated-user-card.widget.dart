import 'package:flutter/material.dart';
import 'package:shopping/ui/android/pages/login.page.dart';
import 'package:shopping/ui/android/pages/signup.page.dart';

class UnauthenticatedUserCard extends StatefulWidget {
  @override
  _UnauthenticatedUserCardState createState() =>
      _UnauthenticatedUserCardState();
}

class _UnauthenticatedUserCardState extends State<UnauthenticatedUserCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(
          height: 60,
        ),
        FlatButton(
          child: Text('Autentique-se'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          },
        ),
        FlatButton(
          child: Text('Ainda não sou cadastrado'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignupPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}
