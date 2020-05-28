import 'package:covid_caru/app/components/cards/card_info_clinic.dart';
import 'package:flutter/material.dart';

class ClinicInfoPage extends StatefulWidget {
  final String tagHero;

  const ClinicInfoPage({Key key, this.tagHero}) : super(key: key);

  @override
  _ClinicInfoPageState createState() => _ClinicInfoPageState();
}

class _ClinicInfoPageState extends State<ClinicInfoPage> {

  String number = '98 98484-2820';

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
                  phone: number,
                ),
                SizedBox(height: 10),
                CardInfoClinic(
                  name: "POSTO DE SAUDE MANAUS DA BEIRA",
                  address: "RUA NOSSA SENHORA DE FATIMA",
                  phone: number,
                ),
                SizedBox(height: 10),
                CardInfoClinic(
                  name: "CENTRO DE SAUDE SUZETE DE OLIVEIRA BORGES",
                  address: "AV PADRE MARIO RACCA",
                  phone: number,
                ),
                SizedBox(height: 10),
                CardInfoClinic(
                  name: "POSTO DE SAUDE SANTA RITA",
                  address: "RUA DO SERRANO",
                  phone: number,
                ),
                SizedBox(height: 10),
                CardInfoClinic(
                  name: "POSTO DE SAUDE FRANCISCO PLACIDO DE SOUSA",
                  address: "TRAV 1 DE JANEIRO",
                  phone: number,
                ),
                SizedBox(height: 10),
                CardInfoClinic(
                  name: "POSTO DE SAUDE LIVRAMENTO",
                  address: "AV PRINCIPAL",
                  phone: number,
                ),
                SizedBox(height: 10),
                CardInfoClinic(
                  name: "POSTO DE SAUDE DE SAO LOURENCO",
                  address: "RUA DE NAZARÉ",
                  phone: number,
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