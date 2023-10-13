// import 'package:ecommerce/carousel.dart';
// import 'package:ecommerce/ProductScreen.dart';
// import 'package:ecommerce/widgets/product_cart.dart';
// import 'package:ecommerce/widgets/shopone.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: HomeScreen(),
    );
  }
}
