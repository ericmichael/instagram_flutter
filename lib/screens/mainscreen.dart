import 'package:flutter/material.dart';
import 'package:instagram_clone/blocs/instagrambloc.dart';
import 'package:instagram_clone/models/post.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    InstagramBloc bloc = Provider.of<InstagramBloc>(context);
    return Scaffold(appBar: AppBar(title: Text("Instagram"),),
    body: ListView.builder(
      itemCount: bloc.timeline.length,
      itemBuilder: (_,i){
        Post p = bloc.timeline[i];
        return Column(children: <Widget>[
          Image.network(p.image_url),
          Text(p.caption)
        ],);
      },
    ),);
  }
}