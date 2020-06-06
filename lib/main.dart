import 'package:clean_bottom_nav_bar/Widgets/home.dart';
import 'package:clean_bottom_nav_bar/Widgets/home_pm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SaveUser().clearCache();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(209, 144, 226, 1.0),
        accentColor: Color.fromRGBO(116, 169, 239, 1.0),
        textTheme: TextTheme(
          bodyText1: GoogleFonts.nunito(),
          bodyText2: GoogleFonts.nunito(),
          headline1: GoogleFonts.nunito(),
          headline2: GoogleFonts.nunito(),
          headline3: GoogleFonts.nunito(),
          headline4: GoogleFonts.nunito(),
          headline5: GoogleFonts.nunito(),
          headline6: GoogleFonts.nunito(),
          overline: GoogleFonts.nunito(),
          subtitle1: GoogleFonts.nunito(),
          subtitle2: GoogleFonts.nunito(),
          button: GoogleFonts.nunito(),
          caption: GoogleFonts.nunito(),
        ),
      ),
      routes: {
        "/": (context) => ChangeNotifierProvider(
              builder: (context, widget) => Home(),
              create: (BuildContext context) => HomePm(),
            )
      },
    );
  }
}
