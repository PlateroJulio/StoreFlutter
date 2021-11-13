import 'package:flutter/material.dart';
import 'package:store/components/Functions/Functions.dart';
import 'package:store/components/cart_screen/widget/ItemCard.dart';
import 'package:store/components/home_screen/widgets/NavigationBar.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store'),
      ),
      bottomNavigationBar: NavigationBar(),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Cart Products',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(child: ItemCard())
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          deleteAllToCart();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Cart()),
          );
        },
        child: const Icon(Icons.remove_circle),
        backgroundColor: Colors.red,
      ),
    );
  }
}
