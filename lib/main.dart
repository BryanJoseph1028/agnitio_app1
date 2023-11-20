import 'package:agnitio_v1/src/pages/camera_page.dart';
import 'package:agnitio_v1/src/pages/dashboard_page.dart';
import 'package:agnitio_v1/src/pages/historial_page.dart';
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
        '/':(context) => const dashboard(),
        '/signup':(context) => const signup(),
        '/recovery':(context) => const recovery(),
        '/login':(context) => const LoginPage(),
        '/camera_page':(context) => const camera_page(),
        //'camera':(context) => const Camera(),
        '/dashboard':(context) => const dashboard(),
        '/listpage':(context) => const list_page(),
        '/historial':(context) => const historial()
      },
    );
  }
}
