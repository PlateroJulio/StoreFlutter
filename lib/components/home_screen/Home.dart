import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
            height: 65,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(offset: Offset(0, 0), blurRadius: 25)],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                itemShop(),
                itemExplore(),
                itemCart(),
                itemFavorite(),
                itemAccount()
              ],
            )),
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

Widget itemShop() {
  return Column(
    children: [Icon(Icons.storefront), Text('Shop')],
  );
}

Widget itemExplore() {
  return Column(
    children: [Icon(Icons.travel_explore), Text('Explore')],
  );
}

Widget itemCart() {
  return Column(
    children: [Icon(Icons.shopping_cart), Text('Cart')],
  );
}

Widget itemFavorite() {
  return Column(
    children: [Icon(Icons.favorite_border), Text('Favorites')],
  );
}

Widget itemAccount() {
  return Column(
    children: [Icon(Icons.person), Text('Account')],
  );
}
