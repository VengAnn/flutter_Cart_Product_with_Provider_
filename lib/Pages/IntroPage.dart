// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.blue[100],
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.asset("images/pic6.jpg"),
            //
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "We have alot of Product for selt every day",
                style: GoogleFonts.notoSerif(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                "New Product Everyday",
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            //
            //
            const SizedBox(
              height: 30,
            ),
            //
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              child: Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text(
                    "Get Started",
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
