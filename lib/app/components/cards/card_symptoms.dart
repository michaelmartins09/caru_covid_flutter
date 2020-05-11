import 'package:flutter/material.dart';

class CardSymptoms extends StatelessWidget {
  final String title;
  final String pathImage;

  const CardSymptoms({Key key, this.title, this.pathImage}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: 10),
        Container(
          height: 80,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10
              )
            ]
          ),
          child: Row(
            children: <Widget>[
              SizedBox(width: 8),
              FlutterLogo(),
              Expanded(
                child: Text(title??"text", textAlign: TextAlign.center,)
              )
            ],
          ),
        ),
      ],
    );
  }
}