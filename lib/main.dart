
import 'package:agnitio_v1/src/pages/camera_page.dart';
import 'package:agnitio_v1/src/pages/dashboard_page.dart';
import 'package:agnitio_v1/src/pages/list_page.dart';
import 'package:agnitio_v1/src/pages/login_page.dart';
import 'package:agnitio_v1/src/pages/recovery_page.dart';
import 'package:agnitio_v1/src/pages/signup_page.dart';
import 'package:flutter/material.dart';

void main(){    
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agnitio App',
      initialRoute: '/',
      routes: {
        '/':(context) => const LoginPage(),
        '/signup':(context) => const signup(),
        '/recovery':(context) => const recovery(),
        '/camera':(context) => const camera(),
        '/login':(context) => const LoginPage(),
        '/dashboard':(context) => const dashboard(),
        '/listpage':(context) => const list_page()
        
      },
    );
  }
}
  