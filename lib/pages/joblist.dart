import 'package:flutter/material.dart';

class joblist extends StatefulWidget {
  joblist({Key? key}) : super(key: key);

  @override
  State<joblist> createState() => _joblistState();
}

class _joblistState extends State<joblist> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        body: Container(
          child: ListView(
            children:const <Widget>[
              SizedBox(height: 16.0),
              Text("job_list")
              // SizedBox(height: 16.0),
              // FoodListview(),
              // SizedBox(height: 16.0),
              // SelectTypeSection(),
              // SizedBox(height: 16.0),
              // MenuItemsList()
            ],
          ),
        ));
  }
}