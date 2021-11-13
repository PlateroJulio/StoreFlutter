import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:store/Models/ItemCart.dart';
import 'package:store/Models/Producto.dart';
import 'package:fluttertoast/fluttertoast.dart';

List<ItemCart> carrito = [];
bool existe = false; //NO
int new_count = 0;
int index = 0;

void addToCart(Producto item, int cant) {
  existe = false;

  if (carrito.length == 0) {
    carrito.add(new ItemCart(item, cant));
  } else {
    carrito.forEach((element) {
      Producto prod = element.getProducto();
      if (prod.getName() == item.getName()) {
        new_count = element.getCount();
        new_count = new_count + cant;
        int index = carrito.indexOf(element);
        carrito[index].setCount(new_count);
        new_count = 0;
        existe = true;
      }
    });

    if (existe == false) {
      carrito.add(new ItemCart(item, cant));
    }
  }

  Fluttertoast.showToast(
      msg: "Add to cart",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0);
}

void deleteAllToCart() {
  carrito.clear();
  Fluttertoast.showToast(
      msg: "Delete all to cart",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}
