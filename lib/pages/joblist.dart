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
             MenuItemsList()
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

class MenuItemsList extends StatelessWidget {
  const MenuItemsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 16.0),
          MenuItem(),
          SizedBox(height: 16.0),
          MenuItem(),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         
          SizedBox(
            width: 16.0,
          ),
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(12, 23,23, 213),
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 15.0,
                          ),
                          Text('PT. Pungut')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Marketing',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Container(
                      width: 200.0,
                      child: Text(
                        'Last education S1 teknik sipil, pengalaman 1 tahun',
                        style: TextStyle(color: Colors.grey),
                      )),SizedBox(
                    height: 8.0,
                  ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                        
                        width: 200,
                        
                    child:  ElevatedButton(
                        onPressed: () {
                        },
                        child: Text("Apply"),
                      ),
                      ),
                      )
                      
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

  