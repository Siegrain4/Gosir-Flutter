import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:simpelin/src/services/api.dart';
import 'package:simpelin/src/router/constant.dart';
import 'package:simpelin/src/theme/theme.dart';
import 'package:simpelin/src/models/Transaksi/TransaksiModel.dart';
import 'package:http/http.dart' as http;
import 'package:simpelin/src/config/env.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'dart:developer';
import 'package:simpelin/src/theme/theme.dart';

class TransaksiController extends GetxController {
  var isLoading = false.obs;
  var log = TransaksiData().obs;
  var transaksi = <TransaksiData>[].obs;

  Future<void> addTransaksi(String user_id,String product_id, int qty, int harga, int subtotal) async {
    isLoading = false.obs;
    final response = await ApiService().addTransaksi(user_id,product_id,qty,harga,subtotal);
    print(response);
    if (response != null) {
      Get.rawSnackbar(message: "Silahkan Checkout Produk Anda");
    } else {
      Get.defaultDialog(
          middleText: "Produk Gagal Di Checkout",
          textConfirm: "OK",
          confirmTextColor: whiteColor,
          buttonColor: yellowColor,
          onConfirm: () {
            Get.back();
          });
      isLoading.value = false;
    }
  }

  void getTransaksi() async {
    try {
      isLoading(true);
      var res = await ApiService().transaksi();
      if(res != null){
        transaksi.value = res;
      }else{}
    }finally {
      isLoading(false);
    }
  }
}
