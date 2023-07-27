import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_design/model/cart_model.dart';
import 'package:provider/provider.dart';

import '../Components/ProdutItems.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello ",
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            Text(
              'Welcome to My Appllication production',
              textAlign: TextAlign.start,
              style: GoogleFonts.notoSerif(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
            //
            const SizedBox(
              height: 15,
            ),
            //Divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(
                thickness: 4,
              ),
            ),
            //
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Products Items',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                    itemCount: value.shopItems.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return ProductItems(
                        itemsName: value.shopItems[index][0],
                        itemsPrice: value.shopItems[index][1],
                        imagePath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                      );
                    });
              },
            )),
          ],
        ),
      )),
    );
  }
}
