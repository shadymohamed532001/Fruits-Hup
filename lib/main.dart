import 'package:flutter/material.dart';
import 'package:fruithup/fruit_app.dart';
import 'package:fruithup/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().setUpServiceLocator();
  runApp(const FruitApp());
}
