import 'package:flutter/material.dart';
import 'package:store/components/home_screen/widgets/NavigationBar.dart';
import 'package:store/components/shop_screen/widget/ItemProducto.dart';
import 'package:store/components/shop_screen/widget/widgets.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store'),
      ),
      bottomNavigationBar: NavigationBar(),
      body: Column(
        children: <Widget>[
          encabezado(),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'All Products',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(child: ItemProducto())
        ],
      ),
    );
  }
}
