import 'package:flutter/material.dart';
import 'package:portfolio_projeto/custom_colors.dart';
import 'package:portfolio_projeto/page.dart';

void main() {
  runApp(MaterialApp(
    title: "Portfolio Althierfson",
    theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme:
            const AppBarTheme(backgroundColor: CustomColors.persianBlue)),
    home: const PortfolioPage(),
    debugShowCheckedModeBanner: false,
  ));
}
