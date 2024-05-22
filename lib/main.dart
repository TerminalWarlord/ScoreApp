import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoreapp/screens/home.dart';

final kColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark, seedColor: Color.fromARGB(255, 62, 0, 195));
void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
      colorScheme: kColorScheme,
      textTheme: GoogleFonts.latoTextTheme(),
    ),
    home: HomeScreen(),
  ));
}
