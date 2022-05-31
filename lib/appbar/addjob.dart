
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobportal/appbar/company_home.dart';
import 'package:jobportal/database/account.dart';
import 'package:jobportal/database/job.dart';
import 'package:jobportal/welcome/constrain.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:jobportal/auth/login.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;

class addjob extends StatefulWidget {
  addjob({Key? key}) : super(key: key);

  @override
  State<addjob> createState() => _addjob();
}

class _addjob extends State<addjob> {
  final _formKey = GlobalKey<FormState>();
  final divisi = TextEditingController();
  final last_edu = TextEditingController();
  final pengalam = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // FirebaseFirestore firestore = FirebaseFirestore.instance;
    // CollectionReference user = firestore.collection('user');
     return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Add job",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: defaultPadding * 2),
                   TextFormField(
                        
                        controller: divisi,
                        decoration: InputDecoration(labelText: 'Divisi'),
                      ),
                        TextFormField(
                      
                        controller: last_edu,
                        decoration: InputDecoration(labelText: 'Last education'),
                      ),
                        TextFormField(
                       
                        controller: pengalam,
                        decoration: InputDecoration(labelText: 'pengalaman'),
                      ),
                    
                    const SizedBox(height: defaultPadding * 2),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                      addjob_(divisi.text, last_edu.text, pengalam.text);
                      //  user.add({
                      //    'name':nameControl.text,
                      //    'las_edu': pendidikanControl.text,
                      //    'alamat': alamatControl.text,
                      //    'email': emailControl.text,
                      //    'password': passControl.text
                      //  });
                    divisi.text='';
                  last_edu.text='';
                  pengalam.text='';
                       Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainPage(),
                            ),
                          );
                        },
                        child: Text("Upload"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

