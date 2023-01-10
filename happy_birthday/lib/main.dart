import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Image.asset('lib/images/closePortrait.jpg'),
          Container(
            margin: const EdgeInsets.only(top: 245.0, left: 150.0),
            child: Text(
              'Happy Birtday',
              style: GoogleFonts.alegreya(
                fontSize: 24.0,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
