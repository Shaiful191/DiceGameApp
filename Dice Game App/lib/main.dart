import 'package:flutter/material.dart';
import 'home_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(  
        appBarTheme: AppBarTheme(color: Colors.purple[900]),
      ) ,
      title: 'Demeo pp',
       home: HomePage());
  }
}


