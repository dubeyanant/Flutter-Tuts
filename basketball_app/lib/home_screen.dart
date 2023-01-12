import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFC56F),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              width: double.infinity,
              child: Text(
                'Basketball\nCounter',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'A',
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '0',
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('+1'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('+2'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('+3'),
                    ),
                  ],
                ),
                Container(
                  height: 500.0,
                  width: 2.0,
                  color: Colors.black,
                ),
                Column(
                  children: [
                    Text(
                      'B',
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '0',
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('+1'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('+2'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('+3'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
