import 'package:flutter/material.dart';
import 'package:store/components/home_screen/widgets/NavigationBar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        bottomNavigationBar: NavigationBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  'Home',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              itembanner(context, "assets/images/vegs_banner.png"),
              itembanner(context, "assets/images/banner_frutas.jpg"),
              itembanner(context, "assets/images/banner_carnes.jpg"),
              itembanner(context, "assets/images/banner_arinas.jpg"),
              itembanner(context, "assets/images/banner_complementos.png"),
            ],
          ),
        ));
  }
}

Widget itembanner(context, String url) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: MediaQuery.of(context).size.width / 3,
    width: MediaQuery.of(context).size.width,
    child: Image.asset(url),
  );
}
