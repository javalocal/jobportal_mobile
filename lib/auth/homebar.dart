import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jobportal/auth/login.dart';
import 'package:jobportal/auth/regiscom.dart';
import 'package:jobportal/auth/register.dart';
import 'package:jobportal/welcome/constrain.dart';

class welcomeregis extends StatelessWidget {
  const welcomeregis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  Spacer(),
                  Image(image: AssetImage('images/logo.png'), height: 150,width: 250,),
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Register(),
                        ),
                      )
                      ,
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF6CD8D1),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))
                      ),
                      child: Text("Register Job Applicant"),
                      
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Registerco(),
                            )),
                        style: TextButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color.fromARGB(0, 108, 216, 209),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xFF6CD8D1)), 
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                        ),
                        child: Text("Register Company", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}