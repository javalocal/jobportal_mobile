import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColumnDemo(),
    );
  }
}
class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 207, 255),
      body: SafeArea(
        child: Center(
          child: Card(
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlutterLogo(size: 48),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        ' Pungut',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text('kami adalah perusahaan profesional. Kami Memberi kenyamanan lebih dari yang anda bayangkan. visi kami untuk memberikan yang terbaik untuk anda. ',
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}