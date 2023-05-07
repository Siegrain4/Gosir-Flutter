import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpelin/src/services/api.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class UploadController extends GetxController {

  var isLoading = false.obs;
  var imageURL = ''.obs;


  @override
  void onInit(){
    super.onInit();
  }

  Future<String> uploadImage(ImageSource imageSource) async {
    try {
      final pickedFile = await ImagePicker().pickImage(source: imageSource);
      isLoading(true);
      if (pickedFile != null) {
        http.StreamedResponse res = await ApiService().uploadBukti(pickedFile.path);
        print('statusCode ${res.statusCode}');

        var responseData = await res.stream.toBytes();
        var responseString = String.fromCharCodes(responseData);

        if (res.statusCode == 200) {
          Get.snackbar('Success', 'Image uploaded successfully',
              margin: const EdgeInsets.only(top: 5, left: 10, right: 10));
          return responseString;
        } else {
          Get.snackbar('Failed', 'Image not uploaded',
              margin: const EdgeInsets.only(top: 5, left: 10, right: 10));
        }
      } else {
        Get.snackbar('Failed', 'Image not selected',
            margin: const EdgeInsets.only(top: 5, left: 10, right: 10));
      }
      return "";
    } finally {
      isLoading(false);
    }
  }
}