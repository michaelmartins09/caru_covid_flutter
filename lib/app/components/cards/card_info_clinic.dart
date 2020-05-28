import 'package:covid_caru/app/shared/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardInfoClinic extends StatelessWidget {
  final String name;
  final String address;
  final String phone;

  CardInfoClinic({Key key, this.name, this.address, this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: <Widget>[
          Image.asset(pathClinic2, scale: 2),
          SizedBox(width: 5),
          Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(height: 8),
                Align(child: Text(name??"name here", style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 14,
                ), textAlign: TextAlign.center)),
                Divider(),
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on, color: Theme.of(context).primaryColor, size: 18),
                    SizedBox(width: 5),
                    Expanded(child: Text(address??"Endereço não disponível", style: TextStyle(
                      fontSize: 13 
                    ))),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.phone, color: Theme.of(context).primaryColor, size: 18),
                    SizedBox(width: 5),
                    Expanded(child: Text(phone??"Número não disponível", style: TextStyle(
                      fontSize: 13 
                    ))),
                    SizedBox(width: 10),
                    ButtonTheme(
                      height: 25,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      buttonColor: Theme.of(context).primaryColor,
                      child: RaisedButton(
                        textColor: Colors.white,
                        onPressed:() async => await _launchURL(),
                        child: Text("Ligar agora"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }

  _launchURL() async {
    String url = 'tel: +55 $phone';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}