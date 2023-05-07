import 'package:get/get.dart';
import 'package:simpelin/src/models/Transaksi/CartModel.dart';
import 'package:simpelin/src/services/api.dart';
import 'package:simpelin/src/theme/theme.dart';

class CartController extends GetxController {
  var isLoading = false.obs;
  var log = CartData().obs;
  var cart = <CartData>[].obs;

  Future<void> addCart(String user_id,String nama_produk, String deskripsi, String stok, String harga, String image) async {
    isLoading = false.obs;
    final response = await ApiService().addCart(user_id,nama_produk,deskripsi,stok,harga,image);
    print(response);
    if (response != null) {
      Get.rawSnackbar(message: "Anda telah menambahkan keranjang");
    } else {
      Get.defaultDialog(
          middleText: "Keranjang gagal ditambahkan",
          textConfirm: "OK",
          confirmTextColor: whiteColor,
          buttonColor: yellowColor,
          onConfirm: () {
            Get.back();
          });
      isLoading.value = false;
    }
  }

  void getCart() async {
    try {
      isLoading(true);
      var res = await ApiService().cart();
      if(res != null){
        cart.value = res;
      }else{}
    }finally {
      isLoading(false);
    }
  }
}