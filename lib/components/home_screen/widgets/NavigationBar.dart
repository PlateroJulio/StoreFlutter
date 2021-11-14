import 'package:flutter/material.dart';
import 'package:store/components/account_screen/Account.dart';
import 'package:store/components/cart_screen/Cart.dart';
import 'package:store/components/explore_screen/Explore.dart';
import 'package:store/components/favorite_screen/Favorite.dart';
import 'package:store/components/shop_screen/Shop.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 65,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(offset: Offset(0, 0), blurRadius: 10)],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            itemShop(context),
            itemExplore(context),
            itemCart(context),
            itemFavorite(context),
            itemAccount(context)
          ],
        ));
  }
}

Widget itemShop(context) {
  return Card(
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Shop()),
        );
      },
      child: Container(
          height: 65,
          width: 65,
          child: Column(
            children: [Icon(Icons.storefront), Text('Shop')],
          )),
    ),
  );
}

Widget itemExplore(context) {
  return Card(
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Explore()),
        );
      },
      child: Container(
          height: 65,
          width: 65,
          child: Column(
            children: [Icon(Icons.travel_explore), Text('Category')],
          )),
    ),
  );
}

Widget itemCart(context) {
  return Card(
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Cart()),
        );
      },
      child: Container(
          height: 65,
          width: 65,
          child: Column(
            children: [Icon(Icons.shopping_cart), Text('Cart')],
          )),
    ),
  );
}

Widget itemFavorite(context) {
  return Card(
    child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Favorite()),
          );
        },
        child: Container(
          height: 65,
          width: 65,
          child: Column(
            children: [Icon(Icons.favorite_border), Text('Favorites')],
          ),
        )),
  );
}

Widget itemAccount(context) {
  return Card(
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Account()),
        );
      },
      child: Container(
        height: 65,
        width: 65,
        child: Column(
          children: [Icon(Icons.person), Text('Account')],
        ),
      ),
    ),
  );
}
