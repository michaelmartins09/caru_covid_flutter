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
          width: 160,
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
              Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset(pathImage),
              ),
              Expanded(
                child: Text(title??"text", textAlign: TextAlign.center, style: TextStyle(
                  fontWeight: FontWeight.bold
                ))
              ),
              SizedBox(width: 8),
            ],
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}