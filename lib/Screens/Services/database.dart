import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  

  //user id
  final String uid;
  DatabaseService({this.uid});
  // collection reference
  final CollectionReference brewcollection = Firestore.instance.collection('brews');

  Future updateUserData(String sugars ,String name ,int strength,) async {

    return await brewcollection.document(uid).setData({
      'sugars': sugars,
      'name': name,
      'strenghth': strength, 
    });
  }

}
