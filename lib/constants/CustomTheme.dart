import 'package:flutter/material.dart';

class CustomTheme{




  static Color getTextThemeColors() {
    return Color(0xFF1a202f);
  }

  static Color getsecoundTextThemeColor() {
    return Color(0xFF525a6d);
  }

  static Color boxColor() {
    return Color(0xFF1a202f);
  }

  static Color getBlackAndWhiteThemeColors() {
    return Color(0xFF1a202f);
  }

  static Color getReBlackAndWhiteThemeColors() {
    return Colors.black;
  }


  static ThemeData buildDarkTheme() {
    Color primaryColor = Colors.teal;
    Color secondaryColor = Colors.white;
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      buttonColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      accentColor: secondaryColor,
      canvasColor: Colors.white,
      scaffoldBackgroundColor: Colors.blueGrey,
      backgroundColor: Color(0x101622),
      errorColor: Color(0xFFB00020),
      inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.grey),
        prefixStyle: TextStyle(

            color: Colors.black

        ),
        enabledBorder:  UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white
          ),
        ),
// and:
        focusedBorder:  UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white
          ),
        ),
      ),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildTextTheme(base.accentTextTheme),
    );
  }


  static ThemeData buildLightTheme() {
    Color primaryColor = Colors.teal;
    Color secondaryColor = Colors.white;
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      buttonColor: primaryColor,

      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      accentColor: secondaryColor,
      canvasColor: Colors.white,
      scaffoldBackgroundColor: Color(0xFFEFF1F4),
      backgroundColor: Color(0x101622),

      inputDecorationTheme: InputDecorationTheme(

        labelStyle: TextStyle(color: Colors.grey),


        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: new UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.black,

              width: 0.2
          ),
        ),
// and:
        focusedBorder: new UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.black,
              width: 0.2
          ),
        ),


      ),
      errorColor: Color(0xFFB00020),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildTextTheme(base.accentTextTheme),
    );
  }



//  static StreamBuilder streamBuilder()
//  {
//
//
//    final streamBuilder = StreamBuilder(
//
//      stream: ,
//
//    )
//
//
//
//
//  }


  static TextTheme _buildTextTheme(TextTheme base) {
    final txtName = 'sans-serif';
    return base.copyWith(
      body1: base.title.copyWith(
        fontFamily: txtName,
        fontSize: 16,
        color: getBlackAndWhiteThemeColors(),
      ),
      body2: base.title.copyWith(
        fontFamily: txtName,
        fontSize: 14,
        color: getTextThemeColors(),
      ),
      caption: base.title.copyWith(
        fontFamily: txtName,
        fontSize: 12,
        color: getTextThemeColors(),
      ),
      headline: base.title.copyWith(
        fontFamily: txtName,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: getBlackAndWhiteThemeColors(),
      ),
      subhead: base.title.copyWith(
        fontFamily: txtName,
        fontSize: 22,
        color: getTextThemeColors(),
      ),
      title: base.title.copyWith(
        fontFamily: txtName,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: getBlackAndWhiteThemeColors(),
      ),


      subtitle: base.title.copyWith(
        fontFamily: txtName,
        fontSize: 16,
        color: getTextThemeColors(),
      ),




    );
  }

//  static bool isDark(){
//
//
//
//    return theme_bloc.get;
//
//
//  }


  static ThemeData setTheme(bool isDark){

//    return isDark ? buildDarkTheme() : buildLightTheme();

    return isDark ? ThemeData(
      brightness: Brightness.dark,

    ):ThemeData(
      brightness: Brightness.light,

    ) ;

  }

}
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}