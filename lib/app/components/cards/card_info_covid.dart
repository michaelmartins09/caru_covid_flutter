import 'package:flutter/material.dart';

class CardInfoCovid extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final bool isLoading;

  const CardInfoCovid({Key key, this.title, this.value, this.color, this.isLoading = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
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
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.3)??Colors.grey[200],
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), topRight: Radius.circular(20))
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: !isLoading? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(value.toString(), textAlign: TextAlign.center, style: TextStyle(
                    color: color, fontSize: value != '-' ? int.parse(value) > 999 ? 28 : 40 : 40, fontWeight: FontWeight.bold
                  )),
                  SizedBox(height: 4),
                  Text(title.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(
                    color: color, fontSize: 10, fontWeight: FontWeight.bold
                  )),
                ],
              ) : CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}