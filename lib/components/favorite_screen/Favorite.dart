import 'package:flutter/material.dart';
import 'package:store/components/Functions/Functions.dart';
import 'package:store/components/favorite_screen/widget/itemFav.dart';
import 'package:store/components/home_screen/widgets/NavigationBar.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      bottomNavigationBar: NavigationBar(),
      body: Column(
        children: <Widget>[
          encabezado(context),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Favorites Products',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(child: itemFav())
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          deleteAllToFavorite();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Favorite()),
          );
        },
        child: const Icon(Icons.remove_circle),
        backgroundColor: Colors.red,
      ),
    );
  }
}

Widget encabezado(context) {
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
      ],
    ),
  ));
}
