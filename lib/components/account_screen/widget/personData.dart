import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.Dart';

class personData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [Content(context), ImageUser(), Info(context)]);
  }
}

Widget Content(context) {
  return Container(
    height: MediaQuery.of(context).size.height / 2,
    width: MediaQuery.of(context).size.width / 1.5,
    decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(25),
        color: Colors.black12),
    margin: EdgeInsets.only(top: 80.0),
    alignment: FractionalOffset.topCenter,
  );
}

Widget ImageUser() {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      width: 190.0,
      height: 190.0,
      decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/photoUser.jpg"))));
}

Widget Info(context) {
  return Container(
    margin: EdgeInsets.only(top: 210),
    child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 60),
          child: Text(
            'Platero Julio',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4.5,
        ),
        Card(
          child: InkWell(
            onTap: () => launch('https://github.com/PlateroJulio'),
            child: Container(
              width: 50,
              child: Image.asset("assets/images/github_logo.png"),
            ),
          ),
        )
      ],
    ),
  );
}
