import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jobportal/appbar/appbarfix.dart';
import 'package:jobportal/appbar/company_home.dart';
import 'package:jobportal/database/account.dart';
import 'package:jobportal/welcome/constrain.dart';
import 'package:jobportal/auth/register.dart';
import 'package:form_field_validator/form_field_validator.dart';


class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  final emailControl = TextEditingController();
  final passControl = TextEditingController();
  late String _email, _password;
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference user = firestore.collection('user');
  return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign In",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Register(),
                            ),
                          ),
                          child: Text(
                            "Sign Up!",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding * 2),
                  // Form(child:Column(
                  //   children: [
                      TextFormField(
                        controller: emailControl,
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                      TextFormField(
                        controller: passControl,
                        obscureText: true,
                        decoration: InputDecoration(labelText: 'Password'),
                      ),const SizedBox(height: defaultPadding * 2),
                         SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                        login_(emailControl.text);
                        print(passs);
                          // print(ok);
                          if(passControl.text==passs){
                            if(role =="co"){
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainPage(),
                            ),
                          );
                          print("ok");
                            }else if (role=="job"){
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => appbar_(),
                            ),
                          );
                            }
                          }
                        },
                        child: Text("Sign In"),
                      ),
                    ),
                      
                  //   ],
                  // )) 
                      ],
                    )
                ),
              ),
            ),
        ],
      ),
    );
  }
}