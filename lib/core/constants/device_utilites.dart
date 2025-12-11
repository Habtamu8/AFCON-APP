import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AFCONDeviceUtility {
   static double getStatusBarhight() {
      return MediaQuery.of(Get.context!).padding.top; }

   static double getBottomNavigationBarHeight(){
     return kBottomNavigationBarHeight;
   }
   static double getAppBarHeight(){
     return kToolbarHeight;
   }
   static double getKeyboardHeight(){
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
     return viewInsets.bottom;
     /* or it can be expressed like 
      return  MediaQuery.of(Get.context!).viewInsets.bottom;
      */
   }
    static double getscreenWidth(){
      return MediaQuery.of(Get.context!).size.width;
    }

     static double getscreenHeight(){
      return MediaQuery.of(Get.context!).size.height;
    }
   
}