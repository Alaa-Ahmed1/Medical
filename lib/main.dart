import 'package:flutter/material.dart';
//import 'package:project_x/contact_us.dart';
import 'profile.dart'; // Import the profile page
import 'favorite_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FavoritePage(),
    );
  }
}
