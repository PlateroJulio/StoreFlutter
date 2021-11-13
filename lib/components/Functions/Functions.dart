import 'package:flutter/material.dart';
import 'package:store/Models/ItemCart.dart';
import 'package:store/Models/Producto.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:store/components/cart_screen/Cart.dart';

List<ItemCart> carrito = [];
bool existe = false; //NO
int new_count = 0;
int index = 0;

@override
void initState() {
  carritoVacio();
}

bool carritoVacio() {
  return (carrito.length == 0) ? true : false;
}

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

void deleteOneItem(Producto item, context) {
  carrito.forEach((element) {
    Producto prod = element.getProducto();
    int cantidad = element.getCount();
    if (prod.getName() == item.getName()) {
      int index = carrito.indexOf(element);
      //validar si cantidad es igual a 1
      if (cantidad == 1) {
        carrito.removeWhere((element) => (element.getProducto() == item));
      }

      if (cantidad > 1) {
        new_count = cantidad - 1;

        carrito[index].setCount(new_count);
      }
    }
  });
  Navigator.push(
      context, new MaterialPageRoute(builder: (context) => new Cart()));
  new_count = 0;
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

void animationPay(context) {
  carrito.clear();
  Fluttertoast.showToast(
      msg: "Payment successfully ...",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0);

  Navigator.push(
      context, new MaterialPageRoute(builder: (context) => new Cart()));
}
