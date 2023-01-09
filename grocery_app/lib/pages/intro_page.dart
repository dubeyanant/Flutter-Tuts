import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80.0, bottom: 40.0, top: 160.0),
            child: Image.asset('lib/images/avocado.png'),
          ),

          //Text: We deliver groceries at your doorsteps
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries at your doorsteps',
              textAlign: TextAlign.center,
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
            'fresh item everyday!',
            style: TextStyle(color: Colors.grey[600]),
          ),

          const Spacer(),

          //Button: get started
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade600,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24.0),
              child: const Text('Get Started',
                  style: TextStyle(color: Colors.white)),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
