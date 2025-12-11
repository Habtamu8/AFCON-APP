import 'package:flutter/material.dart';

class REElevatedButtonTheme {
  REElevatedButtonTheme._(); 

static final ElevatedButtonThemeData lightElevatedButton = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0, 
    foregroundColor:Colors.white,
    backgroundColor: const Color.fromARGB(255, 53, 59, 222),
    disabledBackgroundColor: Colors.red,
    disabledForegroundColor: Colors.red,
    side:const BorderSide(color: Color.fromARGB(255, 53, 59, 222)),
    padding:const EdgeInsets.symmetric(vertical: 18),
    textStyle:const TextStyle(fontSize: 16 , color: Colors.white , fontWeight: FontWeight.w900),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  )
);


  static final ElevatedButtonThemeData darkElevatedButton = ElevatedButtonThemeData(
   style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor:Colors.white,
    backgroundColor: Colors.grey,
    disabledBackgroundColor: Colors.grey,
    disabledForegroundColor: Colors.grey,
    side:const BorderSide(color: Colors.blue),
    padding:const EdgeInsets.symmetric(vertical: 18),
    textStyle:const TextStyle(fontSize: 16 , color: Colors.white , fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  )
);

}