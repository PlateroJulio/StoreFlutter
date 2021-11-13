import 'package:flutter/material.dart';
import 'package:store/Models/Producto.dart';
import 'package:store/components/home_screen/widgets/NavigationBar.dart';

class Detail extends StatelessWidget {
  final Producto item;
  const Detail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store'),
      ),
      bottomNavigationBar: NavigationBar(),
      body: Container(
        child: Center(
          child: Text(item.getDescription()),
        ),
      ),
    );
  }
}
