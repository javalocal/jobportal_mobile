import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jobportal/appbar/appbarfix.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference user = firestore.collection('user');
var passs,role,id,name;

  void adduser(String name, String last_edu, String alamat, String email, String password ){
     user.add({
        'role':"job",
      'name':name,
      'las_edu': last_edu,
      'alamat': alamat,
      'email': email,
      'password': password
                       });
                          
  }

  void addcompany(String name, String alamat, String email, String password ){
     user.add({
       'role':"co",
      'name':name,
      'alamat': alamat,
      'email': email,
      'password': password
                       });
  }

void login_(String email)async{
    String pass;
    var pass_;
    final data = await user.where('email',isEqualTo: email).get();
  data.docs.forEach((element) {
   var datah=  element.data();
   passs=datah["password"];
   role=datah["role"];
   name=datah["name"];
   id=element.id;
   print(id);
  });
  }


