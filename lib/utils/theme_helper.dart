import 'package:flutter/material.dart';

class ThemeHelper {
  InputDecoration textInputDecoration({
    String labelText = "",
    String hintText = "",
    Color fillColor = Colors.white,
  }) {
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      fillColor: fillColor,
      filled: true,
      contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.black),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Colors.grey.shade600),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.red, width: 2.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.red, width: 2.0),
      ),
    );
  }

  ButtonStyle buttonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      minimumSize: MaterialStateProperty.all(const Size(double.infinity, 40)),
      backgroundColor: MaterialStateProperty.all(Colors.white),
      shadowColor: MaterialStateProperty.all(Colors.transparent),
    );
  }

  BoxDecoration boxDecorationGradient(BuildContext context) {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xff3a1515),
          Colors.red,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }

  TextStyle textStyleUnderline(){
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      decoration: TextDecoration.underline,
      decorationColor: Colors.white,
    );
  }

  TextStyle textStyleButton(){
    return const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  TextStyle textStyleStandard({double? fontSize, Color? textColor}){
    return TextStyle(
      color: textColor ?? Colors.white,
      fontFamily: 'impact',
      fontSize: fontSize ?? 16
    );
  }

  LinearGradient linearGradient(){
    return const LinearGradient(
      colors: [
        Color(0xff3a1515),
        Colors.red,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }
}
