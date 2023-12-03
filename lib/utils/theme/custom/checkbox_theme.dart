import 'package:flutter/material.dart';

class TCheckboxTheme {
  TCheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
    checkColor: MaterialStateProperty.resolveWith((states){
      if ( states.contains(MaterialState.selected) ) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states){
      if ( states.contains(MaterialState.selected) ) {
        return const Color.fromARGB(255, 98, 0, 238);
      } else {
        return Colors.transparent;
      }
    }),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
    checkColor: MaterialStateProperty.resolveWith((states){
      if ( states.contains(MaterialState.selected) ) {
        return Colors.black;
      } else {
        return Colors.white;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states){
      if ( states.contains(MaterialState.selected) ) {
        return const Color.fromARGB(255, 98, 0, 238);
      } else {
        return Colors.transparent;
      }
    }),
  );

  
}