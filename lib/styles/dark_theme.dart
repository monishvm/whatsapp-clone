import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/styles/kcolors.dart';

ThemeData get darkTheme => ThemeData(
      appBarTheme: _appBarTheme(),
      colorScheme: _colorScheme(),
      textTheme: _textTheme(),
      tabBarTheme: _tabBarTheme(),
    );

AppBarTheme _appBarTheme() {
  return AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: _colorScheme().primary,
    ),
    color: _colorScheme().primary,
    titleTextStyle: _textTheme().headline1,
    actionsIconTheme: _iconTheme(),
  );
}

IconThemeData _iconTheme() {
  return IconThemeData(
    color: _colorScheme().onPrimary,
    size: 25,
  );
}

ColorScheme _colorScheme() {
  return ColorScheme(
    brightness: Brightness.dark,

    // App bar
    primary: KColors.appbar,
    onPrimary: KColors.caption,
    primaryContainer: KColors.reply,

    // Fab
    secondary: KColors.fab,
    onSecondary: KColors.fabIcon,

    // Our Msg
    tertiary: KColors.ourMsg,
    tertiaryContainer: KColors.ourMsgReply,
    onTertiary: KColors.ourMsgReplyText,

    // Err
    error: Colors.red.shade200,
    onError: Colors.red.shade500,

    // Bg
    background: KColors.bg,
    onBackground: KColors.text,

    // seen color
    surface: KColors.blue,

    // not in use
    onSurface: KColors.fabIcon,
  );
}

TabBarTheme _tabBarTheme() {
  return TabBarTheme(
    labelColor: _colorScheme().secondary,
    labelStyle: _textTheme().headline5,
    unselectedLabelStyle: _textTheme().headline4,
    unselectedLabelColor: KColors.caption,
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        color: _colorScheme().secondary,
        width: 3,
      ),
    ),
  );
}

TextTheme _textTheme() {
  TextStyle poppins = GoogleFonts.poppins();

  return TextTheme(
    // Whatsapp
    headline1: poppins.copyWith(
      color: KColors.caption,
      fontWeight: FontWeight.w800,
      fontSize: 20,
    ),

    // Names
    headline2: poppins.copyWith(
      color: KColors.text,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    // Selected name
    headline3: poppins.copyWith(
      color: KColors.text,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),

    // tab bar
    headline4: poppins.copyWith(
      color: KColors.caption,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
    // selected tab
    headline5: poppins.copyWith(
      color: KColors.fab,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),

    // chat
    bodyText1: poppins.copyWith(
      color: KColors.text,
      fontSize: 18,
    ),

    // notification count
    bodyText2: poppins.copyWith(
      color: KColors.bg,
      fontSize: 12,
      fontWeight: FontWeight.w900,
    ),

    // group member below name
    subtitle1: poppins.copyWith(
      color: KColors.text,
      fontSize: 12,
    ),

    // last chat
    subtitle2: poppins.copyWith(
      color: KColors.caption,
      fontSize: 14,
    ),

    // self-msg reply
    caption: poppins.copyWith(
      color: KColors.ourMsgReplyText,
      fontSize: 14,
    ),
  );
}
