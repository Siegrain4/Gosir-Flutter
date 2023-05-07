import 'package:flutter/material.dart';
import 'package:simpelin/src/app.dart';
import 'package:simpelin/src/config/MyHttpOverrides.dart';
import 'dart:io';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp());
}
