import 'package:covid_caru/app/shared/constants/strings.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class AvoidCovidPage extends StatefulWidget {
  final String tagHero;

  const AvoidCovidPage({Key key, this.tagHero}) : super(key: key);

  @override
  _AvoidCovidPageState createState() => _AvoidCovidPageState();
}

class _AvoidCovidPageState extends State<AvoidCovidPage> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.tagHero,
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black), onPressed: (){ Navigator.pop(context); }),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 20),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    right: 150,
                    child: Transform(
                      alignment: Alignment.topRight,
                      transform: Matrix4.rotationY(math.pi),
                      child:  SizedBox(
                        height: 180,
                        width: 180,
                        child: Image.asset(pathPersonMask),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Como \nse previnir?", style: TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold
                      )),
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _cardAvoid(
                            title: "Use máscara",
                            description: "Se precisar sair, use máscara. A máscara deve está bem ajustada cobrindo a parte alta do nariz até o queixo",
                            pathImage: pathAvoidMask
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: _cardAvoid(
                              title: "Evite apertos de mãos",
                              description: "Evite contato com outras pessoas. Assim evita que você seja contaminado",
                              pathImage: pathAvoidMao
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _cardAvoid(
                            title: "Lave as mãos",
                            description: "Lave as mãos frequentemente com água e sabão. O uso de álcool em gel também é indispensável",
                            pathImage: pathAvoidLavar,
                            size: 90
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: _cardAvoid(
                              title: "Ajude a evitar o contágio",
                              description: "Cubra sempre o nariz e a boca ao tossir e ao espirrar",
                              pathImage: pathAvoidContagio
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _cardAvoid(
                            title: "Cuidado aos toques",
                            description: "Evite tocar olhos, nariz e boca.",
                            pathImage: pathAvoidNariz,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: _cardAvoid(
                              title: "Evite aglomerações",
                              description: "Não sabe quem está infectado? Para a sua prevenção evite aglomerações",
                              pathImage: pathAvoidPersonGroup,
                              fontSize: 16
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Align(
                        child: Text("#FiqueEmCasa", style: TextStyle(
                          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.grey
                        ), textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _cardAvoid({String title, String description, String pathImage, double size, double fontSize}){
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(top: size != null && size > 70? 30 : 20),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50),
                  Text(title.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize??18), textAlign: TextAlign.center),
                  SizedBox(height: 10),
                  Text(description, textAlign: TextAlign.center),
                ],
              ),
            )
          ),
          SizedBox(
            height: size??70, 
            width: size??70,
            child: Image.asset(pathImage),
          )
        ],
      ),
    );
  }
}