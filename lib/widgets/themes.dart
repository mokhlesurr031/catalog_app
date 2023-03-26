import "package:flutter/material.dart";
// import "package:google_fonts/google_fonts.dart";

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      // fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )));

  static ThemeData get darkTheme => ThemeData(brightness: Brightness.dark);

  static ThemeData get regularTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      // fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
        color: Colors.deepPurple,
        elevation: 0.0,
      ));

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
  static Color greenColor = Color.fromARGB(255, 46, 211, 4);
}
