import 'package:flutter/material.dart';
import 'package:flutter_playground/animated_snackbars/screen_one.dart';

void main() {
  runApp(const MyApp());
}

const GlobalObjectKey<ScaffoldState> scaffoldKey = GlobalObjectKey<ScaffoldState>('scaffold');

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Playground',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
 class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     // Uncomment the one you want
     return const AnimatedSnackBarsScreenOne();
    // return const NestedHeroScreenOne();
   }
 }

