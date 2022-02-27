import 'package:flutter/material.dart';
import 'package:trivia_app/screens/categories_screen.dart';
import 'package:trivia_app/screens/chat_screen.dart';
import 'package:trivia_app/screens/connections_screen.dart';
import 'package:trivia_app/screens/home_screen.dart';
import 'package:trivia_app/screens/profile_screen.dart';
import 'package:trivia_app/screens/sign_in_screen.dart';
import 'package:trivia_app/screens/password_reset.dart';
import 'package:trivia_app/screens/sign_up_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: CategoriesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}