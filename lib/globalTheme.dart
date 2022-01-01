import 'package:flutter/material.dart';

ThemeData globalTheme()=> ThemeData(

      fontFamily:"Georgia",
      splashColor:Colors.lime,//цвет вспышки при нажатии

      colorScheme:ColorScheme.fromSwatch(
        brightness:Brightness.light,//светлый или темный экран
        primarySwatch:Colors.yellow,//цвет AppBar
      ).copyWith(
        secondary: Colors.green,//второй цвет
      ),

      textTheme: const TextTheme(
        headline4:TextStyle(fontSize:40.0, fontWeight:FontWeight.bold),
        headline6:TextStyle(fontSize:36.0, fontStyle:FontStyle.italic),
        bodyText2:TextStyle(fontSize:25.0, fontFamily: 'Hind'),
      )
  );
