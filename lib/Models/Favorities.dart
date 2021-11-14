import 'package:store/Models/Producto.dart';

class ItemFavorite {
  Producto? _item;
  int _estado = 0;

  ItemFavorite(Producto item, int status) {
    this._item = item;
    this._estado = status;
  }

  getFavorite() {
    return _item;
  }

  getEstado() {
    return _estado;
  }

  setEstado(c) {
    this._estado = c;
  }
}
