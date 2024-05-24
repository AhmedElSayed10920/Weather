import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  } else {
    switch (condition) {
      case 'Sunny':
        return Colors.orange;
      case 'Cloudy':
        return Colors.blue;
      case 'Rainy':
        return Colors.grey;
      case 'Snowy':
        return Colors.lightBlue;
      case 'Thunderstorm':
        return Colors.deepPurple;
      case 'Foggy':
        return Colors.grey;
      default:
        return Colors.blue;
    }
  }
}
