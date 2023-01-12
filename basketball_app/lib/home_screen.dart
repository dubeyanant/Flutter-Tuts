import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter1 = 0, _counter2 = 0;
  void _incrementCounter11() {
    setState(() {
      _counter1++;
    });
  }

  void _incrementCounter12() {
    setState(() {
      _counter1 = _counter1 + 2;
    });
  }

  void _incrementCounter13() {
    setState(() {
      _counter1 = _counter1 + 3;
    });
  }

  void _incrementCounter21() {
    setState(() {
      _counter2++;
    });
  }

  void _incrementCounter22() {
    setState(() {
      _counter2 = _counter2 + 2;
    });
  }

  void _incrementCounter23() {
    setState(() {
      _counter2 = _counter2 + 3;
    });
  }

  void _reset() {
    setState(() {
      _counter1 = _counter2 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFC56F),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50.0),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    const SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      '$_counter1',
                      style: GoogleFonts.poppins(
                        fontSize: 70,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 100.0,
                    ),
                    ElevatedButton(
                      onPressed: _incrementCounter11,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF83D45C),
                      ),
                      child: const Text('+1'),
                    ),
                    ElevatedButton(
                      onPressed: _incrementCounter12,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF50D345),
                      ),
                      child: const Text('+2'),
                    ),
                    ElevatedButton(
                      onPressed: _incrementCounter13,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2E8427),
                      ),
                      child: const Text('+3'),
                    ),
                  ],
                ),
                Container(
                  height: 500.0,
                  width: 1.0,
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
                    const SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      '$_counter2',
                      style: GoogleFonts.poppins(
                        fontSize: 70,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 100.0,
                    ),
                    ElevatedButton(
                      onPressed: _incrementCounter21,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF83D45C),
                      ),
                      child: const Text('+1'),
                    ),
                    ElevatedButton(
                      onPressed: _incrementCounter22,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF50D345),
                      ),
                      child: const Text('+2'),
                    ),
                    ElevatedButton(
                      onPressed: _incrementCounter23,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2E8427),
                      ),
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
              onPressed: _reset,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF952020),
              ),
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
