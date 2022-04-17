import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;
  TextOverflow overflow;

  BigText(
      {Key? key,
      required this.text,
      this.size = 18.0,
      this.color,
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.notoSans(fontWeight: FontWeight.w500, fontSize: size, color: color,)
    );
  }
}