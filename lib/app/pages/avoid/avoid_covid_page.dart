import 'package:flutter/material.dart';

class AvoidCovidPage extends StatefulWidget {
  final String tagHero;

  const AvoidCovidPage({Key key, this.tagHero}) : super(key: key);

  @override
  _AvoidCovidPageState createState() => _AvoidCovidPageState();
}

class _AvoidCovidPageState extends State<AvoidCovidPage> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.tagHero,
      child: Scaffold(
        
      ),
    );
  }
}