import 'package:flutter/material.dart';
import 'package:my_contact_app_/views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
        title: ' My Contact App',
        home: HomeView(),
    );
}


}
