import 'package:flutter/material.dart';
import 'package:store/components/Functions/Functions.dart';
import 'package:store/components/explore_screen/Explore.dart';

Widget encabezadoCategory(context) {
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
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                categoriesItem(1, "Frutas", context),
                categoriesItem(2, "Verduras", context),
                categoriesItem(3, "Bebidas", context),
                categoriesItem(4, "Carnes", context),
                categoriesItem(5, "Complementos", context),
                categoriesItem(6, "Arinas", context),
              ],
            ))
      ],
    ),
  ));
}

Widget categoriesItem(int listType, String name, context) {
  return Card(
    color: Colors.amber[300],
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: InkWell(
        onTap: () {
          initilizeCategoryData(listType);
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new Explore()));
        },
        child: Container(
          height: 30,
          width: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        )),
  );
}
