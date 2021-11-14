import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:store/Models/Producto.dart';
import 'package:store/components/Functions/Functions.dart';
import 'package:store/components/detail_screen/Detail.dart';

class Lista extends StatelessWidget {
  List<Producto> _items = CategoryData();

  @override
  void initState() {
    _items = CategoryData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: _items.length,
      itemBuilder: (_, i) => ItemCate(data: _items[i]),
    );
  }
}

class ItemCate extends StatelessWidget {
  final Producto data;
  const ItemCate({Key? key, required this.data}) : super(key: key);

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
