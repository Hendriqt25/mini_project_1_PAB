import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/order.dart';
import 'page/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => JastipProvider(),
      child: MaterialApp(
        title: 'Jasa titip Online',
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
