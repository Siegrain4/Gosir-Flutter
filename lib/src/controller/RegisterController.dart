import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpelin/src/services/api.dart';
import 'package:simpelin/src/router/constant.dart';
import 'package:simpelin/src/theme/theme.dart';

class RegisterController extends GetxController {
  var isLoading = false.obs;

  // Future<void> registerUser(String name, String email, String password) async {
  //   isLoading = false.obs;
  //   final response = await ApiService().registerApp(name, email, password);
  //   if (response != null) {
  //     Get.rawSnackbar(message: "Akun anda telah didaftarkan");
  //     Get.toNamed(loginRoute);
  //   } else {
  //     Get.defaultDialog(
  //         middleText: "Something went wrong",
  //         textConfirm: "OK",
  //         confirmTextColor: whiteColor,
  //         buttonColor: yellowColor,
  //         onConfirm: () {
  //           Get.back();
  //         });
  //     isLoading.value = false;
  //   }
  // }
}
