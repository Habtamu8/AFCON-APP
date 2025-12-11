import 'package:flutter/material.dart';

class MaOutlinedButtonThemes {

static  OutlinedButtonThemeData lightoutlinedbutton = OutlinedButtonThemeData(
style: OutlinedButton.styleFrom(
   elevation: 0,
   foregroundColor: Colors.black,
   side:const BorderSide(color: Colors.grey),
   textStyle:const TextStyle(fontWeight: FontWeight.w600 , fontSize: 24 , color: Colors.black)
));

static  OutlinedButtonThemeData darkoutlinedbutton = OutlinedButtonThemeData(
style: OutlinedButton.styleFrom(
   elevation: 0,
   foregroundColor: Colors.white,
   side:const BorderSide(color: Colors.grey),
   textStyle:const TextStyle(fontWeight: FontWeight.w600 , fontSize: 16 , color: Colors.white)
));

}