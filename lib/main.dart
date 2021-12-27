import 'package:blog_augsburg/widget/blog_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'Blog about Augsburg';
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: appTitle,
        theme: ThemeData(
          primaryColor: Colors.deepOrange,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.deepOrange,
          ),
        ),
        home: MainPage(appTitle: appTitle),
      );
}

class MainPage extends StatelessWidget {
  final String appTitle;

  const MainPage({@required this.appTitle});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: BlogWidget(),
      );

  Widget buildSharing() => Row(
        children: <Widget>[
          Expanded(child: Text('12.10.2018')),
          Text('Share:'),
          IconButton(
            icon: Icon(FontAwesomeIcons.facebook, color: Colors.blueAccent),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.twitter, color: Colors.blue),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.linkedin),
            onPressed: () {},
          ),
        ],
      );
}
