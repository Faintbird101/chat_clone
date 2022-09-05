import 'package:chat_clone/screens/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Clone',
      theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColor: Colors.red,
          accentColor: Color.fromARGB(255, 246, 246, 195)),
      home: const SignIn_page(),
    );
  }
}
