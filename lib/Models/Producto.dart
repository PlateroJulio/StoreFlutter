class Producto {
  String _name = "";
  String _categoria = "";
  String _url = "";
  String _description = "";
  double _price = 0.0;

  Producto(String name, String categoria, String url, String description,
      double price) {
    this._name = name;
    this._categoria = categoria;
    this._url = url;
    this._description = description;
    this._price = price;
  }

  getName() {
    return _name;
  }

  getCategoria() {
    return _categoria;
  }

  getUrl() {
    return _url;
  }

  getDescription() {
    return _description;
  }

  getPrice() {
    return _price;
  }
}
