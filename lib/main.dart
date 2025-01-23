import 'package:flutter/material.dart';
import 'login_page.dart';
import 'landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Demo',
      initialRoute: '/login', // Aplikasi akan mulai dengan halaman login
      debugShowCheckedModeBanner: false, // Menonaktifkan banner debug
      routes: {
        '/login': (context) => LoginPage(),
        '/landing': (context) => LandingPage(),
      },
    );
  }
}
