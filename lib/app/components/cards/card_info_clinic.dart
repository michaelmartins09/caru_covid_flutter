import 'package:covid_caru/app/shared/constants/strings.dart';
import 'package:flutter/material.dart';

class CardInfoClinic extends StatelessWidget {
  final String name;
  final String address;
  final String phone;

  const CardInfoClinic({Key key, this.name, this.address, this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: <Widget>[
          Image.asset(pathClinic2, scale: 2),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(height: 8),
                Align(child: Text(name??"name here", style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16,
                ), textAlign: TextAlign.center)),
              ],
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}