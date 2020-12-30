import 'package:flutter/material.dart';
import 'beranda.dart';
import 'login.dart';
import 'signup.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Sablon',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: BerandaPage(),
      routes: {
        '/daftar': (context) => DaftarPage(),
        '/masuk': (context) => MasukPage(),
        '/beranda': (context) => BerandaPage(),
        '/feedback': (context) => BerandaPage(),
      },
    );
  }
}
