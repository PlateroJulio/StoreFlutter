import 'package:flutter/material.dart';
import 'package:store/Models/ItemCart.dart';
import 'package:store/Models/Producto.dart';
import 'package:store/components/Functions/Functions.dart';
import 'package:store/components/cart_screen/Cart.dart';
import 'package:store/components/detail_screen/Detail.dart';

class ItemCard extends StatelessWidget {
  final List<ItemCart> _items = carrito;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: _items.length,
      itemBuilder: (_, i) => Item(data: _items[i]),
    );
  }
}

class Item extends StatelessWidget {
  final ItemCart data;
  const Item({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Producto prod = data.getProducto();
    return Container(
      child: Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Detail(item: data.getProducto())),
              );
            },
            child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1.5),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 100,
                          child: Image.asset(prod.getUrl()),
                        ),
                        Text("${prod.getName()}"),
                        Text(prod.getPrice().toString()),
                        IconButton(
                            onPressed: () {
                              deleteOneItem(data.getProducto(), context);
                            },
                            icon: Icon(
                              Icons.remove_circle,
                              color: Colors.red,
                              size: 30,
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(prod.getDescription()),
                        Text(
                          "Unidades: " + data.getCount().toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                )),
          )),
    );
  }
}
