import 'package:covid_caru/app/pages/home/clipper_header.dart';
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
                    height: 250,
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 160, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _buildInfoCovid(title: "Confirmados", value: 11, color: Colors.red),
                      SizedBox(width: 10),
                      _buildInfoCovid(title: "Descartados", value: 12, color: Colors.grey),
                      SizedBox(width: 10),
                      _buildInfoCovid(title: "Óbitos", value: 3, color: Colors.black),
                      SizedBox(width: 10),
                      _buildInfoCovid(title: "Recuperados", value: 1, color: Colors.green),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildInfoCovid({String title, int value, Color color}){
    return Expanded(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10
            )
          ]
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.3)??Colors.grey[200],
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), topRight: Radius.circular(20))
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(value.toString(), textAlign: TextAlign.center, style: TextStyle(
                    color: color, fontSize: 28, fontWeight: FontWeight.bold
                  )),
                  SizedBox(height: 10),
                  Text(title.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(
                    color: color, fontSize: 10, fontWeight: FontWeight.bold
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}