import 'package:covid_caru/app/components/cards/card_info_clinic.dart';
import 'package:flutter/material.dart';

class ClinicInfoPage extends StatefulWidget {
  final String tagHero;

  const ClinicInfoPage({Key key, this.tagHero}) : super(key: key);

  @override
  _ClinicInfoPageState createState() => _ClinicInfoPageState();
}

class _ClinicInfoPageState extends State<ClinicInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.tagHero,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple[900],
              Colors.deepPurple,
            ]
          )
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Unidades Básicas \nde Saúde do Município", style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28
                )),
                SizedBox(height: 20),
                CardInfoClinic(
                  name: "POSTO DE SAUDE VILA DOURADO",
                  address: "VILA DOURADO",
                  phone: "(98) 3394-1187",
                ),
                SizedBox(height: 10),
                CardInfoClinic(
                  name: "POSTO DE SAUDE MANAUS DA BEIRA",
                  address: "RUA NOSSA SENHORA DE FATIMA",
                  phone: "(98) 3394-1187",
                ),
                SizedBox(height: 10),
                CardInfoClinic(
                  name: "CENTRO DE SAUDE SUZETE DE OLIVEIRA BORGES",
                  address: "AV PADRE MARIO RACCA",
                  phone: "(98) 3394-1802",
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        )
      ),
    );
  }
}