import 'package:brewcrew/Screens/Services/auth.dart';
import 'package:flutter/material.dart';


class Sign_In extends StatelessWidget {

final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign In Page'),
        centerTitle: true,

      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 70, horizontal: 130),
        child: 
        RaisedButton(color: Colors.brown[500],
        child: Text('Sign In'),
        textColor: Colors.white,

         onPressed:() async  {
         dynamic result =  await _auth.signInAnon();
        if ( result  == null) {
          
          print('error signing in');

        }
        else {
          print ('signed in');
          print(result);
        }
        })
      ),
    );
  }
}