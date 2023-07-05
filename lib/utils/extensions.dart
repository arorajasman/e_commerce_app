import 'package:flutter/material.dart';

// creating an extension that will be used to convert the hex code of
// color to color object in flutter

// the name of the extension is HexColor and this will be used on Color object
extension HexColor on Color {
  // creating a static function that will return a Color object after converting
  // the hex code to Color object

  // the method below takes hex color code value as input and returs a Color Object
  static Color fromHex(String hexColorValue) {
    hexColorValue = hexColorValue.replaceAll("#", "");
    // checking if the length of hexColorValue is 6 then that means the color does
    // not have any opacity
    if (hexColorValue.length == 6) {
      // making the opacity 100% using the FF
      hexColorValue = "FF$hexColorValue"; // now length of String will be 8
    }
    // converting Color to hex color
    return Color(int.parse(hexColorValue, radix: 16));
  }
}
