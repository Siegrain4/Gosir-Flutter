import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:simpelin/src/services/api.dart';
import 'package:simpelin/src/router/constant.dart';
import 'package:simpelin/src/theme/theme.dart';
import 'package:simpelin/src/models/produk/ProdukModel.dart';
import 'package:http/http.dart' as http;
import 'package:simpelin/src/config/env.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'dart:developer';

class ProdukController extends GetxController {
  var isLoading = true.obs;
  var isLoadingPage = false.obs;
  var produk = <ProdukData>[].obs;

  void getProduk() async {
    try {
      isLoading(true);
      var res = await ApiService().produk();
      if(res != null){
        produk.value = res;
      }else{}
    }finally {
      isLoading(false);
    }
  }

}