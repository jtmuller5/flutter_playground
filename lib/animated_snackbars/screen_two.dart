import 'package:flutter/material.dart';
import 'package:flutter_playground/animated_snackbars/screen_one.dart';
import 'package:flutter_playground/animated_snackbars/snack_fab.dart';

class AnimatedSnackBarsScreenTwo extends StatelessWidget {
  const AnimatedSnackBarsScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Previous Screen'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      floatingActionButton: const SnackFAB(),
    );
  }
}
