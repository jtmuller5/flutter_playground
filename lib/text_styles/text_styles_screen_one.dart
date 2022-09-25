import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStylesScreenOne extends StatelessWidget {
  TextStylesScreenOne({Key? key}) : super(key: key);

  TextStyle nativeFlutter = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  ).copyWith(fontWeight: FontWeight.w300);

  TextStyle googleFontCopy = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  ).copyWith(fontWeight: FontWeight.w300);

  TextStyle googleFontApply = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  ).apply(fontWeightDelta: -2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('All of these should be the same weight (w300)'),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Native Flutter',
                    style: nativeFlutter,
                  ),
                  Text(nativeFlutter.fontWeight.toString()),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Google Fonts - copyWith',
                    style: googleFontCopy,
                  ),
                  Text(googleFontCopy.fontWeight.toString()),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Google Fonts - apply',
                    style: googleFontApply,
                  ),
                  Text(googleFontApply.fontWeight.toString()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
