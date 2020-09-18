import 'package:shopping/blocs/user.bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthenticatedUserCard extends StatefulWidget {
  @override
  _AuthenticatedUserCardState createState() => _AuthenticatedUserCardState();
}

class _AuthenticatedUserCardState extends State<AuthenticatedUserCard> {
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<UserBloc>(context);

    return Container(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage(bloc.user.image),
                ),
                color: Theme.of(context).primaryColor,
                border: Border.all(
                  width: 4,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(200),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Bem-vindo, ${bloc.user.name}'),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              child: Text('Sair'),
              onPressed: bloc.logout,
            ),
          ],
        ),
      ),
    );
  }
}
