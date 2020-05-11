import 'package:covid_caru/app/shared/constants/strings.dart';
import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String title;
  final String pathImage;
  final Function onPressed;

  const ButtonCustom({Key key, this.title, this.onPressed, this.pathImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: (){},
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 0,
                top: 10,
                child: Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 100),
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepPurple[900],
                        Colors.deepPurple,
                      ]
                    )
                  ),
                  child: Center(
                    child: Row(
                    children: <Widget>[
                      Expanded(child: Text(title.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(
                        color: Colors.white
                      ))),
                      SizedBox(width: 10),
                      Image.asset(pathArrowIcon, scale: 5,),
                      SizedBox(width: 20)
                    ],
                  )),
                ),
              ),
              Image.asset(pathImage, scale: 2,)
            ],
          ),
        ),
      ),
    );
  }
}