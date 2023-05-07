import 'package:get/get.dart';
import 'package:simpelin/src/models/produk/ProdukModel.dart';
import 'package:simpelin/src/services/api.dart';
import 'package:simpelin/src/router/constant.dart';
import 'package:simpelin/src/storage/preference.dart';
import 'package:simpelin/src/theme/theme.dart';

class AddProdukController extends GetxController {
  var isLoading = false.obs;
  var log = ProdukData().obs;

  Future<void> addProduk(String user_id,String nama_produk, String deskripsi, String stok, String harga, String image) async {
    isLoading = false.obs;
    final response = await ApiService().addProduk(user_id,nama_produk,deskripsi,stok,harga,image);
    print(response);
    if (response != null) {
      Get.rawSnackbar(message: "Anda Berhasil Menambahkan Produk");
    } else {
      Get.defaultDialog(
          middleText: "Produk Gagal Di tambahkan",
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