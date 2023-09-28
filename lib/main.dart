import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/counter.dart';
import 'package:provider_example/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // First Provider
        ChangeNotifierProvider(
          create: (context) => Counter(),
        ),
       
      ],
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Example',
        home:  HomeScreen(),
      ),
    );
  }
}