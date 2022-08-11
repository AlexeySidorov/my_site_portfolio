import 'package:flutter/material.dart';
import 'package:xaycc_portfolio/pages/home_page.dart';
import 'package:xaycc_portfolio/pages/particle_background.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
      ),
      home: Container(
        decoration: BoxDecoration(color: Colors.grey),
        child: Stack(
          children: <Widget>[
            ParticleBackgroundPage(),
            HomePage(),
          ],
        ),
      ),
    );
  }
}
