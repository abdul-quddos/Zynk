import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(MortarApp());
}

class MortarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MORTAR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF1F1F1F),
        useMaterial3: true,
        textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'Roboto'),
      ),
      routes: appRoutes,
      initialRoute: '/',
    );
  }
}
