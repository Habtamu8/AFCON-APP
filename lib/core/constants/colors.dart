import 'package:flutter/material.dart';

class REColors {

//App basic colors
static const Color primaryColors = Color(0xFF151026);
static const Color secondryColors = Color.fromARGB(255, 53, 59, 222);
static const Color thirdColors = Color.fromARGB(255, 168, 176, 171);
static const Color whiteColors = Colors.white;


// Text Basic Colors
 static const Color textPrimaryColors = Color.fromARGB(26, 129, 129, 129);
 static const Color textSecondryColors = Color.fromARGB(255, 53, 59, 222);
 static const Color textThirdColors = Colors.blueGrey; 


 // background Colors 

static const  Color bgPrimaryColors = Color(0XFFFAFAFA);
static const Color bgSecondryColors = Color.fromARGB(255, 53, 59, 222);
static const Color bgThirdColors = Color.fromARGB(255, 223, 230, 230);

//background Container Colors
 static const Color lightContainer = Color(0xFFF6F6F6);
 static const Color darkContainer =  Color.fromARGB(255, 37, 35, 35);
 

//Button Colors
static const Color buttonPrimaryColors = Color.fromARGB(255, 53, 59, 222);
static const Color buttonSecondColors = Colors.blueGrey; 

// Graident Colors

static Gradient gradientPrimaryColors =const LinearGradient(
  begin: Alignment(0, 0),
  end: Alignment(700,700),
  colors: [
Colors.black87,
Colors.white24,
Color(0xFF6C70EB),
Color.fromARGB(221, 255, 255, 255)
]);

}