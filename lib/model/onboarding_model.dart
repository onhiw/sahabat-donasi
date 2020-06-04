import 'package:flutter/material.dart';

class OnboardingModel {
  String icon;
  String title;
  String description;
  Widget extraWidget;
  
  OnboardingModel({this.icon, this.title, this.description, this.extraWidget}) {
    if (extraWidget == null) {
      extraWidget = new Container();
    }
  }
}