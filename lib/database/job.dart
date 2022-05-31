import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jobportal/appbar/appbarfix.dart';
import 'package:jobportal/database/account.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference job = firestore.collection('job');


  void addjob_(String divisi, String last_edu, String pengalam ){
     job.add({
       'id_co': id,
      'name':name,
      'divisi': divisi,
      'las_edu': last_edu,
      'email': pengalam,
                       });
                          
  }
