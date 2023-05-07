import 'package:get/get.dart';
import 'package:simpelin/src/pages/Checkout/index.dart';
import 'package:simpelin/src/pages/Edit_DataProduk/index.dart';
import 'package:simpelin/src/pages/Halaman%20Awal/index.dart';
import 'package:simpelin/src/pages/Keranjang/index.dart';
import 'package:simpelin/src/pages/Laporan/index.dart';
import 'package:simpelin/src/pages/Others/index.dart';
import 'package:simpelin/src/pages/Profile/index.dart';
import 'package:simpelin/src/pages/splashScreen.dart';
import 'package:simpelin/src/pages/login/index.dart';
import 'package:simpelin/src/pages/Register/index.dart';
import 'package:simpelin/src/pages/Dashboard Kosong//index.dart';
import 'package:simpelin/src/pages/Dashboard/index.dart';
import 'package:simpelin/src/pages/AddProduk/index.dart';
import 'package:simpelin/src/pages/Settings/index.dart';
import 'package:simpelin/src/pages/History_Pemasukan/index.dart';
import 'package:simpelin/src/pages/Detail_Produk/index.dart';
import 'package:simpelin/src/router/constant.dart';

final List<GetPage<dynamic>>? routes = [
  GetPage(name: initialRoute, page: () => SplashScreen()),
  GetPage(name: loginRoute, page: () => Login()),
  GetPage(name: registerRoute, page: () => RegisterScreen()),
  GetPage(name: homeRoute, page: () => Halaw()),
  GetPage(name: dashboardRoute, page: () => Dashboard()),
  GetPage(name: addprodukRoute, page: () => AddProduk()),
  GetPage(name: settingRoute, page: () => Setti()),
  GetPage(name: pemasukanRoute, page: () => HistoryPemasukan()),
  GetPage(name: detailRoute, page: () => DetailProduk()),
  GetPage(name: othersRoute, page: () => Others()),
  GetPage(name: profileRoute, page: () => Profile()),
  GetPage(name: keranjangRoute, page: () => Keranjang()),
  GetPage(name: laporanRoute, page: () => Laporan()),
];
