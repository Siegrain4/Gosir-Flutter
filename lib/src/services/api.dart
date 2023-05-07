import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpelin/src/config/env.dart';
import 'package:simpelin/src/models/Transaksi/CartModel.dart';
import 'package:simpelin/src/models/Transaksi/TransaksiModel.dart';
import 'package:simpelin/src/pages/AddProduk/index.dart';
import 'package:simpelin/src/services/app_exception.dart';
import 'package:simpelin/src/services/base_client.dart';
import 'package:simpelin/src/services/base_controller.dart';
import 'package:simpelin/src/models/login/LoginModel.dart';
import 'package:simpelin/src/models/register/RegisterModel.dart';
import 'package:simpelin/src/models/produk/ProdukModel.dart';
import 'package:simpelin/src/models/produk/UploadModel.dart';
import 'package:http/http.dart' as http;
import 'package:simpelin/src/storage/preference.dart';

class ApiService extends GetConnect with BaseController {
  //------------------Login------------------
  Future<LoginModel?> loginApp(String email, String password) async {
    dynamic body = ({"email": email, "password": password});
    final response = await BaseClient()
        .post(BASE_URL, '/login', body, "")
        .catchError((error) {
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        Get.rawSnackbar(message: apiError["message"]);
      } else {
        handleError(error);
      }
    });
    print(response);
    if (response != null) {
      var log = loginFromJson(response);
      return log;
    } else {
      return null;
    }
  }

  Future dashboard() async {
    final token = await getToken();
    final response = await BaseClient()
        .get(BASE_URL, '/dashboard', token)
        .catchError((error) {
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        // print(error.message!);
        Get.rawSnackbar(message: apiError["message"]);
      } else {
        handleError(error);
      }
    });
    if (response != null) {
      // var dashboard = dashboardFromJson(response);
      // return dashboard.data;
    } else {
      return null;
    }
  }

  // Future<List<ProdukData>?> produk() async {
  //   var url = Uri.parse('$BASE_URL/produk');
  //   final response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     var produk = produkModelFromJson(response.body);
  //     return produk.data;
  //   } else {
  //     return null;
  //   }
  // }
  Future<List<ProdukData>?> produk() async {
    // final token = await getToken();
    var url = Uri.parse('$BASE_URL/produk');
    final response = await http.get(url);
    if (response != null) {
      var produk = produkModelFromJson(response.body);
      return produk.data;
    } else {
      return null;
    }
  }

  Future<List<CartData>?> cart() async {
    // final token = await getToken();
    var url = Uri.parse('$BASE_URL/cart');
    final response = await http.get(url);
    if (response != null) {
      var cart = cartModelFromJson(response.body);
      return cart.data;
    } else {
      return null;
    }
  }

  Future<Produk?> addProduk(String user_id, String nama_produk,
      String deskripsi, String stok, String harga, String image) async {
    dynamic body = ({
      "user_id": user_id,
      "nama_produk": nama_produk,
      "deskripsi": deskripsi,
      "stok": stok,
      "harga": harga,
      "image": image
    });
    final response = await BaseClient()
        .post(BASE_URL, '/produk/store', body, "")
        .catchError((error) {
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        Get.rawSnackbar(message: apiError["message"]);
      } else {
        handleError(error);
      }
    });
    print(response);
    if (response != null) {
      var log = produkModelFromJson(response);
      return log;
    } else {
      return null;
    }
  }

  Future<http.StreamedResponse> uploadBukti(filepath) async {
    var url = Uri.parse('$BASE_URL/image/store');

    http.MultipartRequest request = new http.MultipartRequest("POST", url);
    http.MultipartFile multipartFile =
        await http.MultipartFile.fromPath('image', filepath);

    request.files.add(multipartFile);

    var response = await request.send();

    if (response.statusCode == 200) {
      Get.snackbar('Success', 'Image uploaded successfully',
          margin: EdgeInsets.only(top: 5, left: 10, right: 10));
    }

    return response;
  }

  Future<Cart?> addCart(String user_id, String nama_produk, String deskripsi,
      String stok, String harga, String image) async {
    dynamic body = ({
      "user_id": user_id,
      "nama_produk": nama_produk,
      "deskripsi": deskripsi,
      "stok": stok,
      "harga": harga,
      "image": image
    });
    final response = await BaseClient()
        .post(BASE_URL, '/cart/store', body, "")
        .catchError((error) {
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        Get.rawSnackbar(message: apiError["message"]);
      } else {
        handleError(error);
      }
    });
    print(response);
    if (response != null) {
      var log = cartModelFromJson(response);
      return log;
    } else {
      return null;
    }
  }

  Future<Transaksi?> addTransaksi(String user_id, String product_id, int qty,
      int harga, int subtotal) async {
    dynamic body = ({
      "user_id": user_id,
      "product_id": product_id,
      "qty": qty,
      "harga": harga,
      "subtotal": subtotal
    });
    final response = await BaseClient()
      .post(BASE_URL, '/transaksi/store', body, "")
      .catchError((error){
      if(error is BadRequestException){
        var apiError = json.decode(error.message!);
        Get.rawSnackbar(message: apiError["message"]);
      }else{
        handleError(error);
      }
    });
    print(response);
    if(response != null){
      var log = transaksiModelFromJson(response);
      return log;
    }else{
      return null;
    }
  }

  Future<List<TransaksiData>?> transaksi() async {
    // final token = await getToken();
    var url = Uri.parse('$BASE_URL/transaksi');
    final response = await http.get(url);
    if (response != null) {
      var transaksi = transaksiModelFromJson(response.body);
      return transaksi.data;
    } else {
      return null;
    }
  }
// Future<LoginModel?>fetchUser()async{
//   final token = await getToken();
//   final response = await BaseClient()
//   .get(BASE_URL, api, token)
// }

}
