import 'package:covid_caru/app/components/buttons/button_custom.dart';
import 'package:covid_caru/app/components/cards/card_info_covid.dart';
import 'package:covid_caru/app/components/cards/card_symptoms.dart';
import 'package:covid_caru/app/components/clipper/clipper_header.dart';
import 'package:covid_caru/app/model/cases_model.dart';
import 'package:covid_caru/app/pages/avoid/avoid_covid_page.dart';
import 'package:covid_caru/app/pages/clinic/clinic_info_page.dart';
import 'package:covid_caru/app/pages/home/home_controller.dart';
import 'package:covid_caru/app/shared/constants/strings.dart';
import 'package:covid_caru/app/shared/utils/format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getCases();
  }

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
                          Colors.deepPurple[900],
                          Colors.deepPurple,
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
                                    onPressed: () => controller.getCases(),
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
                      Observer(
                        builder: (_) {

                          if (controller.cases == null) {
                            print("cases null");
                            return Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    CardInfoCovid(title: "Confirmados", value: '-', color: Colors.red, isLoading: true),
                                    SizedBox(width: 10),
                                    CardInfoCovid(title: "Suspeitos", value: '-', color: Colors.blueGrey, isLoading: true),
                                    SizedBox(width: 10),
                                    CardInfoCovid(title: "Óbitos", value: '-', color: Colors.black, isLoading: true),
                                    SizedBox(width: 10),
                                    CardInfoCovid(title: "Recuperados", value: '-', color: Colors.green, isLoading: true),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        height: 3,
                                        width: 10,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text("DESCARTADOS", style: TextStyle(color: Colors.grey, fontSize: 12)),
                                    ],
                                  )
                                )
                              ],
                            );
                          }

                          if (controller.cases.hasError) {
                            print(controller.cases.error.toString());
                            return Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    CardInfoCovid(title: "Confirmados", value: '-', color: Colors.red),
                                    SizedBox(width: 10),
                                    CardInfoCovid(title: "Suspeitos", value: '-', color: Colors.blueGrey),
                                    SizedBox(width: 10),
                                    CardInfoCovid(title: "Óbitos", value: '-', color: Colors.black),
                                    SizedBox(width: 10),
                                    CardInfoCovid(title: "Recuperados", value: '-', color: Colors.green),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        height: 3,
                                        width: 10,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text("- DESCARTADOS", style: TextStyle(color: Colors.grey, fontSize: 12)),
                                    ],
                                  )
                                )
                              ],
                            );
                          }

                          if (controller.cases.data == null) {
                            print("data null");
                            return Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    CardInfoCovid(title: "Confirmados", value: '-', color: Colors.red, isLoading: true),
                                    SizedBox(width: 10),
                                    CardInfoCovid(title: "Suspeitos", value: '-', color: Colors.blueGrey, isLoading: true),
                                    SizedBox(width: 10),
                                    CardInfoCovid(title: "Óbitos", value: '-', color: Colors.black, isLoading: true),
                                    SizedBox(width: 10),
                                    CardInfoCovid(title: "Recuperados", value: '-', color: Colors.green, isLoading: true),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        height: 3,
                                        width: 10,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text("DESCARTADOS", style: TextStyle(color: Colors.grey, fontSize: 12)),
                                    ],
                                  )
                                )
                              ],
                            );
                          }
                          print("cases.data !=null");
                          
                          CasesModel list = (controller.cases.data as List).last;

                          return Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  CardInfoCovid(title: "Confirmados", value: list.confirmed.toString(), color: Colors.red),
                                  SizedBox(width: 10),
                                  CardInfoCovid(title: "Suspeitos", value: list.suspect.toString(), color: Colors.blueGrey),
                                  SizedBox(width: 10),
                                  CardInfoCovid(title: "Óbitos", value: list.deaths.toString(), color: Colors.black),
                                  SizedBox(width: 10),
                                  CardInfoCovid(title: "Recuperados", value: list.recovered.toString(), color: Colors.green),
                                ],
                              ),
                              SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.date_range, color: Colors.grey),
                                    SizedBox(width: 5),
                                    Text("Atual. em ${getDateWithFormat(list.createdAt.millisecondsSinceEpoch, 'dd/MM/yyyy - kk:mm')}", style: TextStyle(color: Colors.grey, fontSize: 12)),
                                    Expanded(child: Container()),
                                    Container(
                                      height: 3,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text("${list.discarded.toString()} DESCARTADOS", style: TextStyle(color: Colors.grey, fontSize: 12)),
                                  ],
                                )
                              )
                            ],
                          );
                          
                        }
                      ),
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
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Hero(
                    tag: "tagAvoidCovid",
                    child: ButtonCustom(
                      title: "Veja aqui formas de como se previnir do Covid-19", 
                      pathImage: pathPersonMask,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => AvoidCovidPage(tagHero: "tagAvoidCovid",)
                        ));
                      }
                    ),
                  ),
                  Hero(
                    tag: "tagClinicCovid",
                    child: ButtonCustom(
                      title: "Veja aqui informações de postos de saúde e hospital de Carutapera", 
                      pathImage: pathClinic,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ClinicInfoPage(tagHero: "tagClinicCovid",)
                        ));
                      }
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }

}