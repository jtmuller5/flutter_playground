import 'package:flutter/material.dart';
import 'package:flutter_playground/nested_hero_animations/screen_two.dart';

class NestedHeroScreenOne extends StatelessWidget {
  const NestedHeroScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
      ),
      body: const Center(
        child: Hero(
          tag: 'spinner',
          child: CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return const NestedHeroScreenTwo();
          },
        ));
      }),
    );
  }
}
