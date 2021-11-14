import 'package:flutter/material.dart';
import 'package:store/components/account_screen/widget/personData.dart';
import 'package:store/components/home_screen/widgets/NavigationBar.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      bottomNavigationBar: NavigationBar(),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [personData()],
            ),
          ),
        ),
      ),
    );
  }
}
