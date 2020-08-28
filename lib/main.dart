import 'package:flutter/material.dart';
import 'package:saudeMentalSusDatabase/util/setup_locator.dart';

import 'pages/home_form_page/home_form_page.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saúde Mental Sus - Formulário BD ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
            bodyText1: TextStyle(fontSize: 15),
            bodyText2: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        buttonColor: Colors.white,
      ),
      home: HomeFormPage(),
    );
  }
}
