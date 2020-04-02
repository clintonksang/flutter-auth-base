import 'package:brewcrew/Screens/Authenticate/authenticate.dart';
import 'package:brewcrew/Screens/Home/home.dart';
import 'package:brewcrew/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print (user);
    
    //redirects to auth if not signed in , else redirect to home
    if  (user == null)
      return Authenticate();
    else 
    return Home(); 



    ///return either home or authenticate widget
    
    

  }
}