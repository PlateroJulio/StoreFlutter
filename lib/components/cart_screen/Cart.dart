import 'package:flutter/material.dart';
import 'package:store/components/Functions/Functions.dart';
import 'package:store/components/cart_screen/widget/ItemCard.dart';
import 'package:store/components/home_screen/widgets/NavigationBar.dart';

class Cart extends StatelessWidget {
  bool estaVacio = carritoVacio();

  @override
  void initState() {
    estaVacio;
  }

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
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            child: Align(
                alignment: Alignment.center, child: btn(estaVacio, context)),
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

Widget btn(status, context) {
  return (status)
      ? Container()
      : FlatButton(
          color: Colors.blue,
          onPressed: () {
            animationPay(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.payment,
                color: Colors.white,
              ),
              Text(
                'Ir a pasarela',
                style: TextStyle(color: Colors.white),
              )
            ],
          ));
}
