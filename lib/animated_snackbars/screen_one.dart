import 'package:flutter/material.dart';
import 'package:flutter_playground/animated_snackbars/screen_two.dart';
import 'package:flutter_playground/animated_snackbars/snack_fab.dart';

class AnimatedSnackBarsScreenOne extends StatelessWidget {
  const AnimatedSnackBarsScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Next Screen'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const AnimatedSnackBarsScreenTwo();
              },
            ));
          },
        ),
      ),
      floatingActionButton: const SnackFAB(),
    );
  }
}
