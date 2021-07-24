import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_app/screens/publications/publications_screen.dart';


void main() {
  runApp(
    CupertinoApp(
      home: PublicationsScreen(),
      localizationsDelegates:
        [
          DefaultMaterialLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate
        ],
        title: "Messenger",
        debugShowCheckedModeBanner: false,
    ));
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return    PublicationsScreen();


  }
}

late bool isPortrait = false;