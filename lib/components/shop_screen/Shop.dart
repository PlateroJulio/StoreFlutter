import 'package:flutter/material.dart';
import 'package:store/components/home_screen/widgets/NavigationBar.dart';
import 'package:store/components/shop_screen/widget/ItemProducto.dart';

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

Widget encabezado() {
  return SafeArea(
      child: Container(
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(offset: Offset(0, 0), blurRadius: 10)],
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))),
    width: double.infinity,
    child: Column(
      children: [
        Container(
          width: 50,
          height: 50,
          child: Image.asset("assets/images/shop.png"),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          color: Colors.amber[50],
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.green,
                hintText: 'Search ...',
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.search),
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        banner(),
      ],
    ),
  ));
}

class banner extends StatelessWidget {
  const banner({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.08,
      child: Image.asset(
        "assets/images/shop-banner.png",
      ),
    );
  }
}
