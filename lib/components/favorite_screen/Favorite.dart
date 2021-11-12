import 'package:flutter/material.dart';
import 'package:store/components/home_screen/widgets/NavigationBar.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store'),
      ),
      bottomNavigationBar: NavigationBar(),
      body: Container(
        child: Center(
          child: Text('Favorite'),
        ),
      ),
    );
  }
}
