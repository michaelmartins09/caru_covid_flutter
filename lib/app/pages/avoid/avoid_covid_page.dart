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
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 40,
              right: 180,
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
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black), onPressed: (){ Navigator.pop(context); }),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: Padding(
                padding: const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Como \nse previnir", style: TextStyle(
                      fontSize: 32, fontWeight: FontWeight.bold
                    )),
                    SizedBox(height: 40,),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runSpacing: 2,
                      alignment: WrapAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: <Widget>[
                              Card(
                                margin: EdgeInsets.only(top: 20),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(height: 50),
                                      Text("User máscara", style: TextStyle(fontWeight: FontWeight.bold)),
                                      Text("Se sair, use máscaras para evitar a transmissão e contágio através de espirros e tossidos", textAlign: TextAlign.center),
                                    ],
                                  ),
                                )
                              ),
                              SizedBox(
                                height: 70, 
                                width: 70,
                                child: Image.asset(pathTosse),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
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