import 'package:flutter/material.dart';

class CardSymptoms extends StatelessWidget {
  final String title;
  final String pathImage;

  const CardSymptoms({Key key, this.title, this.pathImage}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        SizedBox(width: 10),
        Container(
          height: 80,
          width: size.width * 0.33,
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
              SizedBox(width: 6),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 4, bottom: 8),
                child: Image.asset(pathImage),
              ),
              Expanded(
                child: Text(title??"text", textAlign: TextAlign.center, style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 12
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
