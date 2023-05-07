import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpelin/src/models/login/LoginModel.dart';
import 'package:simpelin/src/services/api.dart';
import 'package:simpelin/src/router/constant.dart';
import 'package:simpelin/src/theme/theme.dart';
import 'package:simpelin/src/storage/preference.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  var log = Data().obs;

  Future<void> loginUser(String email, String password) async {
    isLoading = false.obs;
    final response = await ApiService().loginApp(email, password);
    print(response);
    if (response != null) {
      setUser(response.data!.id.toString()!);
      setNama(response.data!.name!);
      setStore(response.data!.storeName!);
      setEmail(response.data!.email!);
      Get.toNamed(dashboardRoute);
    } else {
      Get.defaultDialog(
          middleText: "Username atau password Salah",
          textConfirm: "OK",
          confirmTextColor: whiteColor,
          buttonColor: yellowColor,
          onConfirm: () {
            Get.back();
          });
      isLoading.value = false;
    }
  }
}
