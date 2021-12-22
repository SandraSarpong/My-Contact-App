import 'package:flutter/material.dart';

class CreateContact extends StatelessWidget {
  const CreateContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Create Contact',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.teal[50],
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
          color: Color(0xff5C5151),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Color(0xffC4C4C4),),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'PHONE',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(width: 50),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Color(0xffC4C4C4),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'GOOGLE',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: Icon(
                Icons.camera_alt,color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 15.0),
                child: Container(
                  child: Text(
                    'Name',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Type name of new contact',
                      hintStyle: TextStyle(fontSize: 12, color: Color(0xffAA9F9F)),
                    ),
                  ),
                ),
              ),
            ]),
            
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 10),
                child: Container(
                  child: Text(
                    'Phone',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Type phone number of new contact',
                      hintStyle: TextStyle(fontSize: 12, color: Color(0xffAA9F9F)),
                    ),
                  ),
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 10),
                child: Container(
                  child: Text(
                    'Work',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Type work details of new contact',
                      hintStyle: TextStyle(fontSize: 12, color: Color(0xffAA9F9F)),
                    ),
                  ),
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 10),
                child: Container(
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.white),
                  ),
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Type email of new contact',
                      hintStyle: TextStyle(fontSize: 12,color: Color(0xffAA9F9F)),
                    ),
                  ),
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 10),
                child: Container(
                  child: Text(
                    'Groups',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Type groups shared with new contact',
                      hintStyle: TextStyle(fontSize: 12, color: Color(0xffAA9F9F)),
                    ),
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'CANCEL',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(width: 50),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'SAVE',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
