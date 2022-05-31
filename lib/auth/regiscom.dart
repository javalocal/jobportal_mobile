
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobportal/database/account.dart';
import 'package:jobportal/welcome/constrain.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:jobportal/auth/login.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;

class Registerco extends StatefulWidget {
  Registerco({Key? key}) : super(key: key);

  @override
  State<Registerco> createState() => _RegisterStateco();
}

class _RegisterStateco extends State<Registerco> {
  final _formKey = GlobalKey<FormState>();
  final emailControl = TextEditingController();
  final passControl = TextEditingController();
  final nameControl = TextEditingController();
  final alamatControl = TextEditingController();
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
                      "Register Company",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text("Already have an account?"),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => login(),
                              )),
                          child: Text(
                            "Sign In!",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: defaultPadding * 2),
                   TextFormField(
                        
                        controller: nameControl,
                        decoration: InputDecoration(labelText: 'Name Company'),
                      ),
                        TextFormField(
                      
                        controller: alamatControl,
                        decoration: InputDecoration(labelText: 'Alamat'),
                      ),
                        TextFormField(
                       
                        controller: emailControl,
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                        TextFormField(
                        
                        controller: passControl,
                        decoration: InputDecoration(labelText: 'Password'),
                      ),
                    
                    const SizedBox(height: defaultPadding * 2),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                      addcompany(nameControl.text, alamatControl.text, emailControl.text, passControl.text);
                      //  user.add({
                      //    'name':nameControl.text,
                      //    'las_edu': pendidikanControl.text,
                      //    'alamat': alamatControl.text,
                      //    'email': emailControl.text,
                      //    'password': passControl.text
                      //  });
                       nameControl.text='';
                      alamatControl.text='';
                      emailControl.text='';
                      passControl.text='';
                       Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => login(),
                            ),
                          );
                        },
                        child: Text("Sign Up"),
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

