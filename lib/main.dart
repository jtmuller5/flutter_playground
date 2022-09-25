import 'package:flutter/material.dart';
import 'package:flutter_playground/animated_snackbars/screen_one.dart';
import 'package:flutter_playground/error_zones/error_zones_screen_one.dart';
import 'package:flutter_playground/flugo/flugo_screen_one.dart';
import 'package:flutter_playground/nested_hero_animations/screen_one.dart';
import 'package:flutter_playground/render_paint/rp_screen_one.dart';
import 'package:flutter_playground/text_styles/text_styles_screen_one.dart';

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
      initialRoute: '/',
      routes: {
        'nested-hero':(context) => NestedHeroScreenOne(),
        'flugo': (context) => FlugoScreenOne()
      },
      home: const HomePage(),
    );
  }
}
 class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     // Uncomment the one you want
     // return const RpScreenOne();
     // return const AnimatedSnackBarsScreenOne();
     // return const NestedHeroScreenOne();
     // return ErrorZonesScreenOne();
     // return FlugoScreenOne();
     return TextStylesScreenOne();
   }
 }

