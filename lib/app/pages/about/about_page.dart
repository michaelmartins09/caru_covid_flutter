import 'package:covid_caru/app/shared/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
          Image.asset(pathLogo2),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 20),
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Sobre o aplicativo", style: TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold
                    )),
                    SizedBox(width: 5),
                    Text("v$versionApp", style: TextStyle(
                      fontSize: 8, fontStyle: FontStyle.italic
                    )),
                  ],
                ),

                SizedBox(height: 10),

                Text("Caru Covid19, é um aplicativo sem fins lucrativos que traz informações sobre o Corona Vírus em Carutapera (MA), tipos básicos de prevenções, sintomas e informações de Unidades Básicas de Saúde e Hospital.", textAlign: TextAlign.center),
                
                SizedBox(height: 10),

                Text("Agradecimentos", style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold
                )),

                SizedBox(height: 10),

                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text("Secretaria Municipal da Saúde de Carutapera - MA", textAlign: TextAlign.center)),
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text("Deyvison Lacerda - Médico", textAlign: TextAlign.center)),
                ),

                SizedBox(height: 20),
                Text("Desenvolvedor", style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold
                )),

                SizedBox(height: 10),

                Column(
                  children: <Widget>[
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Icon(FontAwesomeIcons.userAlt, color: Colors.grey, size: 35),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Michael Martins", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 5),
                    Text("Desenvolvedor de Software", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12)),
                    Text("Acadêmico de Engenharia de Software", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12)),
                    SizedBox(height: 5),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.github, color: Colors.grey, size: 18),
                                SizedBox(width: 5),
                                Text("michaelmartins09", textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.instagram, color: Colors.grey, size: 18),
                                SizedBox(width: 5),
                                Text("michaelmartins09", textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.envelope, color: Colors.grey, size: 18),
                                SizedBox(width: 5),
                                Text("michaelmartins096@gmail.com", textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
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
          ),
        ],
      ),
    );
  }
}