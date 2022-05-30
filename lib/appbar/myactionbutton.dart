import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportal/pages/joblist.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class MyActionButton extends StatelessWidget {
  // MyActionButton({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: ClipPolygon(
        sides: 6,
        child: ElevatedButton(
          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => joblist(),
                            )),
          
          // color: Colors.lightBlueAccent,
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF6CD8D1)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(FontAwesomeIcons.shoppingBag, color: Color.fromARGB(255, 0, 0, 0),),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'Jobs',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Color.fromARGB(255, 0, 0, 0)),
              )
            ],
          ),
          
        ),
      ),
    );
  }
}