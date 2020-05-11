import 'package:covid_caru/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}