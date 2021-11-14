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
        'Panes integrales frescos', 0.85),
    Producto('Pasta', 'Arinas', 'assets/images/noodles1.png',
        'Pastas preservadas', 0.55),
    Producto('Rices ', 'Arinas', 'assets/images/rice.png',
        'Semillas preservadas', 0.75),
    Producto('Pulses', 'Arinas', 'assets/images/pulses.png',
        'Semillas preservadas', 0.45),
    Producto('Fish', 'Carnes', 'assets/images/meat_fish.png',
        'Panes integrales frescos', 3.65),
    Producto('Meat', 'Carnes', 'assets/images/beef_bone.png',
        'Cortes de carnes frescas', 4.65),
    Producto('Cola diet', 'Bebidas', 'assets/images/cola_diet.png',
        'Bebidas frescas', 0.65),
    Producto('Coca Cola', 'Bebidas', 'assets/images/coca_cola.png',
        'Bebidas frescas', 0.70),
    Producto(
        'Pepsi', 'Bebidas', 'assets/images/peesi.png', 'Bebidas frescas', 0.70),
    Producto('Sprite', 'Bebidas', 'assets/images/sprite.png', 'Bebidas frescas',
        0.70),
    Producto('Eggs', 'Complementos', 'assets/images/egg_red.png',
        'Deliciosos ...', 0.17),
    Producto('Oils', 'Complementos', 'assets/images/oils.png', 'Deliciosos ...',
        2.70),
    Producto('Mayonnais', 'Complementos', 'assets/images/mayonnais.png',
        'Deliciosos ...', 1.70),
    Producto('Pepper', 'Verduras', 'assets/images/pepper.png', 'Frescuras ...',
        0.30),
    Producto('Fresh fruits', 'Verduras', 'assets/images/fresh_fruits.png',
        'Frescuras ...', 5.70),
    Producto('Ginger', 'Verduras', 'assets/images/ginger.png', 'Frescuras ...',
        0.15),
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
                height: 120,
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
                          width: 50,
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
