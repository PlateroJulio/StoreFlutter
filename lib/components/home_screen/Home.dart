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
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Center(
                child: Text('data'),
              )
            ],
          ),
        ));
  }
}
