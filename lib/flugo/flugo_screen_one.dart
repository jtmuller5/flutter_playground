import 'package:flutter/material.dart';

class FlugoScreenOne extends StatelessWidget {
  const FlugoScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Hi Flugo'),
          ElevatedButton(
              onPressed: () {
               Navigator.of(context).pushNamed('nested-hero');
              },
              child: const Text('Hugo'))
        ],
      )),
    );
  }
}
