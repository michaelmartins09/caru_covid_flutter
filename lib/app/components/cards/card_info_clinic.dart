import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:covid_caru/app/shared/constants/strings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class CardInfoClinic extends StatelessWidget {
  final String name;
  final String address;
  final String phone;
  final bool is24h;

  CardInfoClinic({Key key, this.name, this.address, this.phone, this.is24h = false}) : super(key: key);

  final String openingHourMorning = "Manhã: das 7h às 12h";
  final String openingHourAfternoon = "Tarde: das 13h às 18h";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 8),
          Align(child: Text(name??"name here", style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 14,
          ), textAlign: TextAlign.center)),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(pathClinic2, scale: 2),
              SizedBox(width: 5),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on, color: Theme.of(context).primaryColor, size: 18),
                        SizedBox(width: 5),
                        Expanded(child: Text(address??"Endereço não disponível", style: TextStyle(
                          fontSize: 13 
                        ))),
                      ],
                    ),
                    !is24h? Row(
                      children: <Widget>[
                        Icon(Icons.access_time, color: Theme.of(context).primaryColor, size: 18),
                        SizedBox(width: 5),
                        Expanded(child: Text(openingHourMorning, style: TextStyle(
                          fontSize: 13 
                        ))),
                      ],
                    ) : Container(height: 0, width: 0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.access_time, color: Theme.of(context).primaryColor, size: 18),
                        SizedBox(width: 5),
                        Expanded(child: Text(is24h? 'Funcionamento 24 horas' : openingHourAfternoon, style: TextStyle(
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
                          padding: EdgeInsets.only(top: 2, bottom: 2, right: 4, left: 4),
                          child: RaisedButton(
                            textColor: Colors.white,
                            onPressed:() async => await _launchURL(),
                            child: Text("Ligar agora"),
                          ),
                        ),
                        ButtonTheme(
                          height: 25,
                          minWidth: 25,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          buttonColor: Theme.of(context).primaryColor,
                          padding: EdgeInsets.only(top: 0, bottom: 2, right: 4, left: 4),
                          child: RaisedButton(
                            textColor: Colors.white,
                            // onPressed:() async => await FlutterOpenWhatsapp.sendSingleMessage("55"+phone.replaceAll(" ", "").replaceAll("-", ""), "Mensagem de teste direto do app CaruCovid19@ Não responder esta mensage."),
                            onPressed:() async => await FlutterOpenWhatsapp.sendSingleMessage("55"+phone.replaceAll(" ", "").replaceAll("-", ""), "Olá. Estou precisando de ajuda/informações sobre covid19. Vim através do aplicativo *Caru Covid 19*. Podes me ajudar?"),
                            child: Icon(FontAwesomeIcons.whatsapp, size: 18,),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ],
          ),
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
