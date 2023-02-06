import 'package:flutter/material.dart';
import 'package:portfolio_projeto/page.dart';

void main() {
  runApp(MaterialApp(
    title: "Portfolio Althierfson",
    theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    home: const PortfolioPage(),
    debugShowCheckedModeBanner: false,
  ));
}
