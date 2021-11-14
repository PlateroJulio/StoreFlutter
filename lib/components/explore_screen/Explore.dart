import 'package:flutter/material.dart';
import 'package:store/components/explore_screen/widget/Lista.dart';
import 'package:store/components/explore_screen/widget/widgets.dart';
import 'package:store/components/home_screen/widgets/NavigationBar.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      bottomNavigationBar: NavigationBar(),
      body: Column(
        children: [encabezadoCategory(context), Expanded(child: Lista())],
      ),
    );
  }
}
