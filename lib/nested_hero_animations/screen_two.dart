import 'package:flutter/material.dart';

class NestedHeroScreenTwo extends StatelessWidget {
  const NestedHeroScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
      ),
      body: const Center(
        child: Hero(
          tag: 'spinner',
          child: CircularProgressIndicator(
            //key: GlobalObjectKey('circle'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pop();
      }),
    );
  }
}
