import 'package:covid_caru/app/components/buttons/button_custom.dart';
import 'package:covid_caru/app/components/cards/card_info_covid.dart';
import 'package:covid_caru/app/components/cards/card_symptoms.dart';
import 'package:covid_caru/app/components/clipper/clipper_header.dart';
import 'package:covid_caru/app/model/cases_model.dart';
import 'package:covid_caru/app/pages/about/about_page.dart';
import 'package:covid_caru/app/pages/avoid/avoid_covid_page.dart';
import 'package:covid_caru/app/pages/clinic/clinic_info_page.dart';
import 'package:covid_caru/app/pages/home/home_controller.dart';
import 'package:covid_caru/app/pages/tests/about_tests_covid_page.dart';
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
                        ),
                        Positioned(
                          top: 30,
                          right: 10,
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),
                              onTap: () => Navigator.push(context, MaterialPageRoute(
                                builder: (context) => AboutPage()
                              )),
                              child: Icon(Icons.help_outline, color: Colors.white),
                            ),
                          ),
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
                          return Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Observer(
                                    builder: (_) {
                                      if (controller.cases == null || controller.cases.data == null) {
                                        return CardInfoCovid(title: "Confirmados", value: '-', color: Colors.red, isLoading: true);
                                      }
                                      if (controller.cases.hasError) {
                                        return CardInfoCovid(title: "Confirmados", value: '-', color: Colors.red);
                                      }
                                      CasesModel list = (controller.cases.data as List).last;

                                      return CardInfoCovid(title: "Confirmados", value: list.confirmed.toString(), color: Colors.red);
                                    }
                                  ),
                                  SizedBox(width: 10),
                                  Observer(
                                    builder: (_) {
                                      if (controller.cases == null || controller.cases.data == null) {
                                        return CardInfoCovid(title: "Suspeitos", value: '-', color: Colors.blueGrey, isLoading: true);
                                      }
                                      if (controller.cases.hasError) {
                                        return CardInfoCovid(title: "Suspeitos", value: '-', color: Colors.blueGrey);
                                      }
                                      CasesModel list = (controller.cases.data as List).last;

                                      return CardInfoCovid(title: "Suspeitos", value: list.suspect.toString(), color: Colors.blueGrey);
                                    }
                                  ),
                                  SizedBox(width: 10),
                                  Observer(
                                    builder: (_) {
                                      if (controller.cases == null || controller.cases.data == null) {
                                        return CardInfoCovid(title: "Óbitos", value: '-', color: Colors.black, isLoading: true);
                                      }
                                      if (controller.cases.hasError) {
                                        return CardInfoCovid(title: "Óbitos", value: '-', color: Colors.black);
                                      }
                                      CasesModel list = (controller.cases.data as List).last;

                                      return CardInfoCovid(title: "Óbitos", value: list.deaths.toString(), color: Colors.black);
                                    }
                                  ),
                                  SizedBox(width: 10),
                                  Observer(
                                    builder: (_) {
                                      if (controller.cases == null || controller.cases.data == null) {
                                        return CardInfoCovid(title: "Recuperados", value: '-', color: Colors.green, isLoading: true);
                                      }
                                      if (controller.cases.hasError) {
                                        return CardInfoCovid(title: "Recuperados", value: '-', color: Colors.green);
                                      }
                                      CasesModel list = (controller.cases.data as List).last;

                                      return CardInfoCovid(title: "Recuperados", value: list.recovered.toString(), color: Colors.green);
                                    }
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Icon(Icons.date_range, color: Colors.grey),
                                    SizedBox(width: 5),
                                    Observer(
                                      builder: (_) {
                                        if (controller.cases == null || controller.cases.data == null || controller.cases.hasError) {
                                          return Text("carregando...", style: TextStyle(color: Colors.grey, fontSize: 12));
                                        }
                                        CasesModel list = (controller.cases.data as List).last;
                                        return Text("Atual. em ${getDateWithFormat(list.createdAt.millisecondsSinceEpoch, 'dd/MM/yyyy - kk:mm')}", style: TextStyle(color: Colors.grey, fontSize: 12));
                                      }
                                    ),
                                    Expanded(child: Container()),
                                    Container(
                                      height: 3,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Observer(
                                      builder: (_) {
                                        if (controller.cases == null || controller.cases.data == null || controller.cases.hasError) {
                                          return Text("DESCARTADOS", style: TextStyle(color: Colors.grey, fontSize: 12));
                                        }
                                        CasesModel list = (controller.cases.data as List).last;
                                        return Text("${list.discarded.toString()} DESCARTADOS", style: TextStyle(color: Colors.grey, fontSize: 12));
                                      }
                                    ),
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
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Sintomas mais comuns".toUpperCase(), style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey
                      )),
                    ),
                    ButtonTheme(
                      height: 25,
                      child: OutlineButton(
                        color: Theme.of(context).primaryColor,
                        onPressed: () => Navigator.push(context, MaterialPageRoute(
                          builder: (context) => AboutTestsCovidPage()
                        )),
                        textColor: Theme.of(context).primaryColor,
                        hoverColor: Theme.of(context).primaryColor,
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Text("Sobre teste aqui"),
                      ),
                    )
                  ],
                ),
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
                      title: "Como se previnir do Covid-19", 
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
                      title: "Informações de postos de saúde e hospital de Carutapera", 
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
