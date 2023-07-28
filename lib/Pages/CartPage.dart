import 'package:flutter/material.dart';
import 'package:learn_design/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("My Cart"),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      //body
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "My Cart",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              value.cartItems.isEmpty
                  ? const Column(
                      children: [
                        Center(
                          child: Text(
                            "No Items Added!",
                          ),
                        ),

                        // SizedBox(
                        //   height: 500,
                        // ),
                      ],
                    )
                  : Expanded(
                      child: ListView.builder(
                          itemCount: value.cartItems.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[200],
                                ),
                                child: ListTile(
                                  title: Text(value.cartItems[index][0]),
                                  //
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      value.cartItems[index][2],
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  //subtitle for price
                                  subtitle: Text(value.cartItems[index][1]),
                                  //
                                  trailing: IconButton(
                                      onPressed: () {
                                        Provider.of<CartModel>(context,
                                                listen: false)
                                            .removeItemsFromCart(index);
                                      },
                                      icon: const Icon(Icons.cancel)),
                                ),
                              ),
                            );
                          }),
                    ),
              //total + pay;
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[400],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Container(
                                width: 140,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 20),
                                      child: Text(
                                        "Total:",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 20),
                                      child: Text(
                                        value.calculateTotal(),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //
                              const SizedBox(
                                width: 70,
                              ),
                              Container(
                                width: 160,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.amber,
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Pay Now"),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
