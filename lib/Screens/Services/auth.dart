import 'package:brewcrew/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on FirebaseUser

  User _userfromFirebaseUser(FirebaseUser user){

  return user != null? User(uid: user.uid) : null;
  }

//listens for auth change user stream 
Stream<User> get user{
  return _auth.onAuthStateChanged.map(_userfromFirebaseUser);
} 
//anonymous signin
Future signInAnon() async {
  try{
  AuthResult result =  await _auth.signInAnonymously();
  FirebaseUser user= result.user;
  return _userfromFirebaseUser(user);
  }
  catch(e){
    print (e.toString());
    return null;

  }
}
//sign in with email and password
//register with email and password
//sign out

Future signOut() async{
  try{

    return await _auth.signOut();

  }catch(e){
    print (e.toString()
    );
    return null;

  }
}


} 
