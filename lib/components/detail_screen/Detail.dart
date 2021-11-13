import 'package:flutter/material.dart';
import 'package:store/Models/Producto.dart';
import 'package:store/components/home_screen/widgets/NavigationBar.dart';

class Detail extends StatelessWidget {
  final Producto item;
  Detail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store'),
      ),
      bottomNavigationBar: NavigationBar(),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Detalle de producto",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          imageDetail(context, item.getUrl()),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: <Widget>[
                  nam(item.getName()),
                  cate(item.getCategoria()),
                  pre(item.getPrice()),
                  desc(item.getDescription())
                ],
              ))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add_circle),
        backgroundColor: Colors.green,
      ),
    );
  }
}

Widget imageDetail(context, img) {
  return Center(
    child: Container(
        width: MediaQuery.of(context).size.width / 2, child: Image.asset(img)),
  );
}

Widget nam(nom) {
  return Center(
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(nom,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    ),
  );
}

Widget cate(cat) {
  return Center(
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text("Categoria: " + cat,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    ),
  );
}

Widget pre(pre) {
  return Center(
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text("Precio: " + pre.toString() + " USD",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    ),
  );
}

Widget desc(desc) {
  return Center(
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text("Descripcion: " + desc, style: TextStyle(fontSize: 14)),
    ),
  );
}
