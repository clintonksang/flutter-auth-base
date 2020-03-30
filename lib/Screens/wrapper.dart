import 'package:brewcrew/Screens/Authenticate/authenticate.dart';
import 'package:brewcrew/Screens/Authenticate/sign_in.dart';
import 'package:brewcrew/Screens/Home/home.dart';
import 'package:flutter/material.dart';


class wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///return either home or authenticate widget
    return Sign_In();  

  }
}