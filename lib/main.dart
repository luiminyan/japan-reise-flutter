import 'package:flutter/material.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:japan_reise/pages/cart.dart';
import 'package:japan_reise/pages/event_pages/fuji_tour.dart';
import 'package:japan_reise/pages/event_pages/kimono.dart';
import 'package:japan_reise/pages/event_pages/noodle.dart';
// import the StartPage
import 'package:japan_reise/pages/start_page.dart';
import 'package:japan_reise/pages/menu_page.dart';
import 'package:japan_reise/pages/event_pages/festival.dart';
// import provider,
import 'package:provider/provider.dart';

void main() {
  // run the app(the app to run)
  runApp(ChangeNotifierProvider(
      create: (context) => CartModel(), child: const MyApp()));
}

// define MyApp(), extend StatelessWidget class
class MyApp extends StatelessWidget {
  // constructor of MyApp class
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // show element on the screen
    return MaterialApp(
      // remove the banner
      debugShowCheckedModeBanner: false,
      // home page = StartPage()
      home: StartPage(),
      // Navigation
      routes: {
        '/startpage': (context) => StartPage(),
        '/menupage': (context) => MenuPage(),
        '/festivalpage': (context) => FestivalPage(),
        '/fujitourpage': (context) => FujiTourPage(),
        '/noodlepage': (context) => NoodlePage(),
        '/kimonopage': (context) => KimonoPage(),
        '/cartpage': (context) => CartPage()
      },
    );
  }
}
