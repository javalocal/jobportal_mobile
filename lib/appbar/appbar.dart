// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobportal/pages/home.dart';
import 'package:jobportal/pages/joblist.dart';

class myAppbar extends StatelessWidget {
  const myAppbar
({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var choose=Color.fromARGB(255, 0, 0, 0);
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => home(),
                            )),
                style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 255, 255, 255)
          ),
              child:  Column(
                children: const <Widget>[
                  Icon(Icons.home, color: Colors.black45),
                  Text('Home', style: TextStyle(fontSize: 12.0, color:Colors.black45 ) )
                ],
              ),
              ),
              Column(
                children: const <Widget>[
                  Icon(Icons.search, color: Colors.black45),
                  Text('Search', style: TextStyle(fontSize: 12.0))
                ],
              ),
              Container(
                width: 100.0,
              ),
              Column(
                children: const <Widget>[
                  Icon(Icons.history, color: Colors.black45),
                  Text(
                    'Status',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black45,
                  ),
                  Text('Account', style: TextStyle(fontSize: 12.0))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}