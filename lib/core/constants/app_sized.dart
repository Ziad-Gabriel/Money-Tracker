import 'package:flutter/material.dart';

/// Add and withdraw button heigth and width based on screen height
double buttonSize(BuildContext context) {
  double size = MediaQuery.of(context).size.height * 0.08;
  return size;
}

/// Money counter widget's height based on screen height
double moneyCounterHeight(BuildContext context) {
  double height = MediaQuery.of(context).size.height * 0.125;
  return height;
}

/// Money counter widget's width based on screen width
double moneyCounterWidth(BuildContext context) {
  double width = MediaQuery.of(context).size.width * 0.75;
  return width;
}

/// Static char widget's width based on screen width
double staticChartWidth(BuildContext context) {
  double width = MediaQuery.of(context).size.width * 0.75;
  return width;
}

/// Static char widget's height based on screen height
double staticChartHeight(BuildContext context) {
  double height = MediaQuery.of(context).size.height * 0.25;
  return height;
}

/// The gabs between widgets in home view
double gabsInHomeView(BuildContext context) {
  double gab = MediaQuery.of(context).size.height * 0.035;
  return gab;
}

/// Money counter text font size based on screen area
double moneyCounterFSize(BuildContext context) {
  double fSize;

  if (MediaQuery.of(context).size.width >= 600) {
    fSize = 46;
  } else {
    fSize = 30;
  }
  return fSize;
}

/// Add and withdraw button text font size based on screen area
double buttonFSize(BuildContext context) {
  double fSize;

  if (MediaQuery.of(context).size.width >= 600) {
    fSize = 18;
  } else {
    fSize = 14;
  }
  return fSize;
}

double bannersHeight(BuildContext context) {
  double height = MediaQuery.of(context).size.height * 0.17;
  return height;
}

double settingsGap(BuildContext context) {
  double gap = MediaQuery.of(context).size.height * 0.02;
  return gap;
}
