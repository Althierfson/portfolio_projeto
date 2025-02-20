import 'package:flutter/material.dart';
import 'package:portfolio_projeto/src/theme/custom_colors.dart';
import 'package:portfolio_projeto/src/pages/page.dart';

void main() {
  runApp(MaterialApp(
    title: "Portfolio Althierfson",
    theme: ThemeData(
        scaffoldBackgroundColor: CustomColors.scaffoldBackgroundColor,
        appBarTheme:
            const AppBarTheme(backgroundColor: CustomColors.appBarBackground)),
    home: const PortfolioPage(),
    debugShowCheckedModeBanner: false,
  ));
}
