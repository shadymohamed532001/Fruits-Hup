import 'package:flutter/material.dart';
import 'package:fruithup/core/helper/fuctions_helper.dart';
import 'package:fruithup/core/networking/local_services.dart';
import 'package:fruithup/fruit_app.dart';
import 'package:fruithup/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().setUpServiceLocator();
  await LocalServices.init();
  fetchDataFromLocalStorage();
  LocalServices.init();
  runApp(const FruitApp());
}
