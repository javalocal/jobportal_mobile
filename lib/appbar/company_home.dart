import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobportal/appbar/addjob.dart';
import 'package:jobportal/appbar/card.dart';
import 'package:jobportal/database/job.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference  job= firestore.collection('job');
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 16, 207, 255),
          title: Text('Firestore Demo'),
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
           MenuItemsList(),
        //     ListView(
        //       MenuItemsList();
        // //       children: [
        // //     await job.getDocuments().then((querySnapshot) {
        // // querySnapshot.documents.forEach((element) {
        //   itemsList.add(element.data);
              
    
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(-5, 0),
                        blurRadius: 15,
                        spreadRadius: 3)
                  ]),
                  width: double.infinity,
                  height: 130,
                  child: Row(
                    children: [
                      // SizedBox(
                      //   width: MediaQuery.of(context).size.width - 160,
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       TextField(
                      //         style: GoogleFonts.poppins(),
                      //         controller: nameController,
                      //         decoration: InputDecoration(hintText: "Name"),
                      //       ),
                      //       TextField(
                      //         style: GoogleFonts.poppins(),
                      //         controller: ageController,
                      //         decoration: InputDecoration(hintText: "Age"),
                      //         keyboardType: TextInputType.number,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      Container(
                        height: 130,
                        width: 130,
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            color: Color.fromARGB(255, 16, 207, 255),
                            child: Text(
                              'Add Data',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                             Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => addjob(),
                            ),
                          );
                            }),
                      )
                    ],
                  ),
                )),
          ],
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
                          // Icon(
                          //   Icons.star,
                          //   size: 15.0,
                          // ),
                          Text('Marketing')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'last edu S1',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Container(
                      width: 200.0,
                      child: Text(
                        'pengalaman 1 tahun',
                        style: TextStyle(color: Colors.grey),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}