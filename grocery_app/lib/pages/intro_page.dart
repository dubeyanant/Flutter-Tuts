import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // logo
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80.0, top: 160.0, bottom: 80.0),
            child: Image.asset('lib/images/avocado.png'),
          ),

          // we deliver groceries at your doorsteps
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries at your doorsteps',
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(
            height: 24,
          ),

          // fresh items everyday
          Text(
            'Fresh items everyday!',
            style: GoogleFonts.notoSerif(
              fontSize: 12,
            ),
          ),

          const Spacer(),

          // get started button
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const HomePage();
              }));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12.0)),
              padding: const EdgeInsets.all(24.0),
              child: const Text('Get Started'),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
