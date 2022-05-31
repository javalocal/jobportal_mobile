import 'package:flutter/material.dart';

void main() => runApp(CardProfile());

class CardProfile extends StatelessWidget {
  const CardProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CircleAvatar(
            //   radius: 50.0,
            //   backgroundImage: AssetImage('assets/images/roses.jpg'),
            // ),
            Text('Valentino', style: TextStyle(
              fontSize: 40.0,
              color: Color.fromARGB(255, 54, 54, 54),
              fontWeight: FontWeight.bold ),
              ),
              Text('Pengangguran', style: TextStyle(
                color: Color.fromARGB(255, 66, 94, 91),
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold ),
                ),

                SizedBox(
                  height: 40.0,
                  width: 150.0,
                  child: Divider(
                    color: Color.fromARGB(255, 66, 94, 91),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text('08 1111 1000 0000',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0
                    ),),
                  ),
                ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email, 
                    color: Colors.teal, 
                  ),
                  title: Text('Pungut@gmal.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900
                  ),
                  ),
                ),
              ),
               Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.home, 
                    color: Colors.teal, 
                  ),
                  title: Text('Jalan Grogol',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900
                  ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.date_range, 
                    color: Colors.teal, 
                  ),
                  title: Text('14 February 2002',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900
                  ),
                  ),
                ),
              )
          ], 
        )),
      );
  }
}