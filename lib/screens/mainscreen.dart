import 'package:flutter/material.dart';
import 'package:instagram_clone/blocs/postsbloc.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    InstagramBloc bloc = Provider.of<InstagramBloc>(context);
    return Column(children: <Widget>[
        Text("logged in"),
        RaisedButton(child: Text("Log Out"), onPressed: (){
          bloc.logout();
        },)
      ],);
  }
}