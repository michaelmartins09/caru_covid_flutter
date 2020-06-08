import 'package:covid_caru/app/components/cards/card_info_clinic.dart';
import 'package:covid_caru/app/model/clinic_model.dart';
import 'package:flutter/material.dart';

class ClinicInfoPage extends StatefulWidget {
  final String tagHero;

  const ClinicInfoPage({Key key, this.tagHero}) : super(key: key);

  @override
  _ClinicInfoPageState createState() => _ClinicInfoPageState();
}

class _ClinicInfoPageState extends State<ClinicInfoPage> {

  static String number = '98 98484-2820';

  List<ClinicModel> listClinics = [
    ClinicModel(
      name: "Centro de Saúde Suzete de Oliveira Borges",
      end: "AV Padre Mário Racca, Centro",
      phone: number
    ),
    ClinicModel(
      name: "Francisco Plácido de Souza",
      end: "TV Primeiro de janeiro, São José",
      phone: number
    ),
    ClinicModel(
      name: "Maria Ribeiro de Almeida Lopes",
      end: "Rua do Cajueiro, Santa Rita",
      phone: number
    ),
    ClinicModel(
      name: "Rosa Almeida de Araújo",
      end: "Rua Primeiro de Maio, Vila Dourado",
      phone: number
    ),
    ClinicModel(
      name: "Manuel Henrique de Queiroz",
      end: "Povoado Livramento",
      phone: number
    ),
    ClinicModel(
      name: "Moacir Braga",
      end: "Povoado de Manaus da Beira",
      phone: number
    ),
    ClinicModel(
      name: "São Lourenço",
      end: "Povoado do São Lourenço",
      phone: number
    ),
    ClinicModel(
      name: "Hospital Regional de Carutapera",
      end: "Rua dep. Manoel Ribeiro, Santa Luzia",
      phone: number,
      is24h: true
    ),
  ];

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
                Column(
                  children: listClinics.map((item) => Column(
                    children: <Widget>[
                      CardInfoClinic(
                        name: item.name,
                        address: item.end,
                        phone: item.phone,
                        is24h: item.is24h,
                      ),
                      SizedBox(height: 10)
                    ],
                  )).toList(),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
