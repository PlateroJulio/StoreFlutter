import 'package:flutter/material.dart';
import 'package:store/components/home_screen/widgets/NavigationBar.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store'),
      ),
      bottomNavigationBar: NavigationBar(),
      body: Container(
        child: Center(
          child: Text('Shop'),
        ),
      ),
    );
  }
}
