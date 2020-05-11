import 'package:covid_caru/app/components/cards/card_info_covid.dart';
import 'package:covid_caru/app/components/cards/card_symptoms.dart';
import 'package:covid_caru/app/components/clipper/clipper_header.dart';
import 'package:covid_caru/app/shared/constants/strings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: ClipperHeader(),
                  child: Container(
                    height: 300,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.deepPurple,
                          Colors.deepPurple[900]
                        ]
                      )
                    ),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25, left: 30),
                            child: Column(
                              children: <Widget>[
                                Image.asset(pathLogo, scale: 2.2),
                                ButtonTheme(
                                  height: 25,
                                  child: OutlineButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    textColor: Colors.white,
                                    borderSide: BorderSide(
                                      color: Colors.white
                                    ),
                                    child: Text("Atualizar"),
                                  ),
                                )
                              ],
                            ),
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 10),
                          child: Image.asset(pathMedicWoman),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 210, bottom: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CardInfoCovid(title: "Confirmados", value: 11, color: Colors.red),
                          SizedBox(width: 10),
                          CardInfoCovid(title: "Suspeitos", value: 3, color: Colors.blueGrey),
                          SizedBox(width: 10),
                          CardInfoCovid(title: "Óbitos", value: 3, color: Colors.black),
                          SizedBox(width: 10),
                          CardInfoCovid(title: "Recuperados", value: 1, color: Colors.green),
                        ],
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle
                              ),
                            ),
                            SizedBox(width: 5),
                            Text("${12} DESCARTADOS", style: TextStyle(color: Colors.grey, fontSize: 12)),
                          ],
                        )
                      )
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Sintomas mais comuns".toUpperCase(), style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey
                )),
              )
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: <Widget>[
                    CardSymptoms(title: "Febre", pathImage: pathFebre),
                    CardSymptoms(title: "Dor na garganta", pathImage: pathGarganta),
                    CardSymptoms(title: "Falta de ar", pathImage: pathAr),
                    CardSymptoms(title: "Tosse (seca ou secretiva)", pathImage: pathTosse),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}