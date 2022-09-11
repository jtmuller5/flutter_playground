import 'package:flutter/material.dart';
import 'package:flutter_playground/main.dart';

class SnackFAB extends StatelessWidget {
  const SnackFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.remove_red_eye),
      onPressed: () {
        ScaffoldMessenger.of(scaffoldKey.currentContext!).hideCurrentSnackBar();
        ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(
          const SnackBar(
            //key: GlobalObjectKey('snack'),
            content: FadeInText(key: GlobalObjectKey('snack'),), // Broken
           // content: Text('SnackBar test') // Okay
          ),
        );
      },
    );
  }
}

class FadeInText extends StatefulWidget {
  const FadeInText({Key? key}) : super(key: key);

  @override
  State<FadeInText> createState() => _FadeInTextState();
}

class _FadeInTextState extends State<FadeInText> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _controller.forward();
  }


  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: _controller,
        child: const Text(
          'SnackBar test',
        ));
  }

  @override
  void dispose() {
    print('Disposing snackbar');
    _controller.dispose();
    super.dispose();
  }
}
