import 'package:flutter/material.dart';
import 'package:store/Models/ItemCart.dart';
import 'package:store/Models/Producto.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:store/components/cart_screen/Cart.dart';

List<Producto> _items = [
  Producto('Bananas', 'Frutas', 'assets/images/bananas.png',
      'Fruta rica en potacio.', 0.36),
  Producto('Apples', 'Frutas', 'assets/images/apples.png',
      'Fruta rica en vitamina A.', 0.56),
  Producto('Bakery', 'Arinas', 'assets/images/bakery.png',
      'Panes integrales frescos', 0.85),
  Producto('Pasta', 'Arinas', 'assets/images/noodles1.png',
      'Pastas preservadas', 0.55),
  Producto('Rices ', 'Arinas', 'assets/images/rice.png', 'Semillas preservadas',
      0.75),
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
  Producto(
      'Sprite', 'Bebidas', 'assets/images/sprite.png', 'Bebidas frescas', 0.70),
  Producto('Eggs', 'Complementos', 'assets/images/egg_red.png',
      'Deliciosos ...', 0.17),
  Producto(
      'Oils', 'Complementos', 'assets/images/oils.png', 'Deliciosos ...', 2.70),
  Producto('Mayonnais', 'Complementos', 'assets/images/mayonnais.png',
      'Deliciosos ...', 1.70),
  Producto(
      'Pepper', 'Verduras', 'assets/images/pepper.png', 'Frescuras ...', 0.30),
  Producto('Fresh fruits', 'Verduras', 'assets/images/fresh_fruits.png',
      'Frescuras ...', 5.70),
  Producto(
      'Ginger', 'Verduras', 'assets/images/ginger.png', 'Frescuras ...', 0.15),
];

List<ItemCart> carrito = [];
bool existe = false; //NO
int new_count = 0;
int index = 0;

int _cate = 1;

@override
void initState() {
  carritoVacio();
  CategoryData();
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

void initilizeCategoryData(int cate) {
  _cate = cate;
}

List<Producto> CategoryData() {
  List<Producto> list = [];
  switch (_cate) {
    case 1:
      list = [];
      _items.forEach((element) {
        if (element.getCategoria() == "Frutas") {
          list.add(element);
        }
      });
      break;
    case 2:
      list = [];
      _items.forEach((element) {
        if (element.getCategoria() == "Verduras") {
          list.add(element);
        }
      });
      break;
    case 3:
      list = [];
      _items.forEach((element) {
        if (element.getCategoria() == "Bebidas") {
          list.add(element);
        }
      });
      break;
    case 4:
      list = [];
      _items.forEach((element) {
        if (element.getCategoria() == "Carnes") {
          list.add(element);
        }
      });
      break;
    case 5:
      list = [];
      _items.forEach((element) {
        if (element.getCategoria() == "Complementos") {
          list.add(element);
        }
      });
      break;
    case 6:
      list = [];
      _items.forEach((element) {
        if (element.getCategoria() == "Arinas") {
          list.add(element);
        }
      });
      break;
    default:
  }
  return list;
}
