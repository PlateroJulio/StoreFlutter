import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:store/Models/ItemCart.dart';
import 'package:store/Models/Producto.dart';
import 'package:fluttertoast/fluttertoast.dart';

List<ItemCart> carrito = [];

int new_count = 0;
int index = 0;

void addToCart(Producto item, int cant) {
  ItemCart valores = ItemCart(item, cant);

  if (carrito.indexOf(valores) != -1) {
    carrito.forEach((element) {
      Producto prod = valores.getProducto();
      if (prod.getName() == item.getName()) {
        new_count = element.getCount();
        new_count = new_count + cant;
        int index = carrito.indexOf(element);
        carrito[index].setCount(new_count);
      }
    });
  }
  if (carrito.indexOf(valores) == -1) {
    carrito.add(valores);
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
