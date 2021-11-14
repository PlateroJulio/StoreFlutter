import 'package:flutter/material.dart';
import 'package:store/Models/Favorities.dart';
import 'package:store/Models/Producto.dart';
import 'package:store/components/Functions/Functions.dart';
import 'package:store/components/detail_screen/Detail.dart';

class itemFav extends StatelessWidget {
  List<ItemFavorite> _items = favoritos;

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
  final ItemFavorite data;
  const Item({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Producto prod = data.getFavorite();
    return Container(
      child: Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Detail(item: data.getFavorite())),
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
                          child: Image.asset(prod.getUrl()),
                        ),
                        Text("${prod.getName()}"),
                        Text(prod.getPrice().toString()),
                        IconButton(
                            onPressed: () {
                              deleteOneFavorite(data.getFavorite(), context);
                            },
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.pink[300],
                              size: 30,
                            ))
                      ],
                    ),
                  ],
                )),
          )),
    );
  }
}
