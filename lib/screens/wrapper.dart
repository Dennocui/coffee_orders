import 'package:best_order/models/user.dart';
import 'package:best_order/screens/authenticate/authenticate.dart';
import 'package:best_order/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return either Home or Authenticate widget

    final user = Provider.of<User>(context);

    if (user == null) {
      return Authenticate();
    } else
      return Home();
  }
}
