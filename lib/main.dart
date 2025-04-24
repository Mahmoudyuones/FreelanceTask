import 'package:flutter/material.dart';
import 'package:freelance_task/order_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {OrderDetailsScreen.routeName: (_) => const OrderDetailsScreen()},
      initialRoute: OrderDetailsScreen.routeName,
    );
  }
}
