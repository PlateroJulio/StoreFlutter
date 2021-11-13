import 'package:flutter/material.dart';
import 'package:store/Models/Producto.dart';
import 'package:store/components/Functions/Functions.dart';
import 'package:store/components/detail_screen/Detail.dart';

class ItemProducto extends StatelessWidget {
  final List<Producto> _items = [
    Producto('Bananas', 'Frutas', 'assets/images/bananas.png',
        'Fruta rica en potacio.', 0.36),
    Producto('Apples', 'Frutas', 'assets/images/apples.png',
        'Fruta rica en vitamina A.', 0.56),
    Producto('Bakery', 'Arinas', 'assets/images/bakery.png',
        'Panes integrales frescos', 0.65),
    Producto('Bananas', 'Frutas', 'assets/images/bananas.png',
        'Fruta rica en potacio.', 0.36),
    Producto('Apples', 'Frutas', 'assets/images/apples.png',
        'Fruta rica en vitamina A.', 0.56),
    Producto('Bakery', 'Arinas', 'assets/images/bakery.png',
        'Panes integrales frescos', 0.65),
  ];

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
  final Producto data;
  const Item({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Detail(item: data)),
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
                          child: Image.asset(data.getUrl()),
                        ),
                        Text(data.getName()),
                        Text(data.getPrice().toString()),
                        IconButton(
                            onPressed: () {
                              addToCart(data, 1);
                            },
                            icon: Icon(
                              Icons.add_circle,
                              color: Colors.green,
                              size: 30,
                            ))
                      ],
                    ),
                    Text(data.getDescription())
                  ],
                )),
          )),
    );
  }
}
