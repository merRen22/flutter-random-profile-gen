
import 'package:flutter/material.dart';
import 'ui/rand_profile.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
  theme: ThemeData(
    // Define the default Brightness and Colors
    brightness: Brightness.light,
    primaryColor: Colors.green[600],
    accentColor: Colors.cyan[400],
    
    // Define the default Font Family
    fontFamily: 'Montserrat',
    
    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    )),
      home: Scaffold(
        body: RandProfile(),
      ),
    );
  }
}