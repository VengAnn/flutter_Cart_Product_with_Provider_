import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_design/model/cart_model.dart';
import 'package:provider/provider.dart';

import 'Pages/IntroPage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Colors.blue[100], // set Status bar color in Android devices
    statusBarIconBrightness:
        Brightness.dark, // set Status bar icons color in Android devices
    statusBarBrightness: Brightness.dark, // set Status bar icon color in iOS
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
