import 'package:flutter/material.dart';
import 'package:foodapp_ui/Screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Foodapp UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          // primarySwatch: Colors.blue,
          //   useMaterial3: true,
          textTheme: const TextTheme(
            displayLarge: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 30),
            displayMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            headlineLarge: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
            titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        home: const LoginScreen());
  }
}
