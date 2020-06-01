import 'package:covid_caru/app/shared/constants/strings.dart';
import 'package:flutter/material.dart';

class AboutTestsCovidPage extends StatefulWidget {
  @override
  _AboutTestsCovidPageState createState() => _AboutTestsCovidPageState();
}

class _AboutTestsCovidPageState extends State<AboutTestsCovidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black), onPressed: () => Navigator.pop(context)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Image.asset(pathLogo2, scale: 1.5),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 20),
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text("Quando devo fazer o teste rápido?", style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold
                )),

                SizedBox(height: 10),

                Text("De 7 a 10 dias de sintomas.", textAlign: TextAlign.center),
                
                Text("Por quê?", style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold
                )),

                SizedBox(height: 10),

                Text("Geralmente o teste antes de 7 dias de sintoma costuma dar um falso negativo. Com isso, pessoas costumam confiar nisso podendo ocasionar em desenvolver a forma grade da doença (pneumonia viral).", textAlign: TextAlign.center),
                
                SizedBox(height: 10),

                SizedBox(height: 20),
                Align(
                  child: Text("#FiqueEmCasa", style: TextStyle(
                    fontSize: 32, fontWeight: FontWeight.bold, color: Colors.grey
                  ), textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
