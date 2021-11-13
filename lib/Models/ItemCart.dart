import 'package:store/Models/Producto.dart';

class ItemCart {
  Producto? _item;
  int _count = 0;

  ItemCart(Producto item, int count) {
    this._item = item;
    this._count = count;
  }

  getProducto() {
    return _item;
  }

  getCount() {
    return _count;
  }

  setCount(c) {
    this._count = c;
  }
}
