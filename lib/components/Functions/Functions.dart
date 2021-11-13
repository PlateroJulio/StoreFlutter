import 'package:store/Models/ItemCart.dart';
import 'package:store/Models/Producto.dart';

List<ItemCart> carrito = [];

void addToCart(Producto item, int cant) {
  carrito.add(ItemCart(item, cant));
}
