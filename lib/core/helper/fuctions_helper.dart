import 'dart:developer';

import 'package:fruithup/core/helper/helper_const.dart';
import 'package:fruithup/core/networking/local_services.dart';

Future<Map<String, dynamic>> fetchDataFromLocalStorage() async {
  onBording = await LocalServices.getData(key: 'onbording');
  usertoken = await LocalServices.getData(key: 'token');
  log('UserToken : $usertoken');
  log('IsonBordingSeen : $onBording');

  return {'onBording': onBording, 'token': usertoken};
}
//  void validateEmail(String val) {
//     if (!EmailValidator.validate(val, true) && val.isNotEmpty) {
//       setState(() {
//         errorMessage = "Invalid Email Address";
//       });
//     } else {
//       setState(() {
//         errorMessage = "";
//       });
//     }
//   }
