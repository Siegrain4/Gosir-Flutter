import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:simpelin/src/router/constant.dart';
import 'package:simpelin/src/theme/theme.dart';
import 'package:get/get.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';

  late TabController _tabController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  // int selectedIndex = 0;
  // List<IconData> data = [
  //   Icons.home_outlined,
  //   Icons.account_circle_outlined,
  //   Icons.edit_note_outlined,
  //   Icons.shopping_cart_checkout
  // ];


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
        child: Container(
          color: yellowColor,
          child: TabBar(
            labelColor: blackColor,
            unselectedLabelColor: whiteColor,
            labelStyle: TextStyle(fontSize: 10.0),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: blackColor, width: 0.0),
              insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
            ),
            indicatorColor: blackColor,
            tabs: <Widget>[
              InkWell(
                onTap: () => Get.offAndToNamed(dashboardRoute),
                child: Tab(
                  icon: Icon(
                    Icons.home,
                    size: 24.0,
                  ),
                  text: "Home",
                ),
              ),
              InkWell(
                onTap: () => Get.offAndToNamed(profileRoute),
                child: Tab(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    size: 24.0,
                  ),
                  text: 'Profile',
                ),
              ),
              InkWell(
              onTap: () => Get.offAndToNamed(laporanRoute),
                child: Tab(
                  icon: Icon(
                    Icons.edit_note_outlined,
                    size: 24.0,
                  ),
                  text: 'Laporan',
                ),
              ),
              InkWell(
                onTap: () => Get.offAndToNamed(keranjangRoute),
                child: Tab(
                  icon: Icon(
                    Icons.shopping_cart_checkout,
                    size: 24.0,
                  ),
                  text: 'Keranjang',
                ),
              )
            ],
            controller: _tabController,
          ),
        ),
      ),
    );
    // return Padding(
    //     padding: EdgeInsets.all(20),
    //     child: Material(
    //       borderRadius: BorderRadius.circular(20),
    //       color: Color(0xFFFFB133),
    //       child: Container(
    //         height: 55,
    //         width: double.infinity,
    //         child: ListView.builder(
    //           itemCount: data.length,
    //           padding: EdgeInsets.symmetric(horizontal: 10),
    //           itemBuilder: (ctx, i) => Padding(
    //             padding: EdgeInsets.symmetric(horizontal: 20),
    //             child: GestureDetector(
    //               onTap: () {
    //                 setState(() {
    //                   selectedIndex = i;
    //                 });
    //               },
    //               child: AnimatedContainer(
    //                 duration: Duration(milliseconds: 250),
    //                 width: 35,
    //                 decoration: BoxDecoration(
    //                   border: i == selectedIndex
    //                       ? Border(
    //                           top: BorderSide(width: 3.0, color: Colors.amber.shade900))
    //                       : null,
    //                   gradient: i == selectedIndex
    //                       ? LinearGradient(
    //                           colors: [Colors.amber.shade900, Color(0xFFFF9D00)],
    //                           begin: Alignment.topCenter,
    //                           end: Alignment.bottomCenter)
    //                       : null,
    //                 ),
    //                 child: Icon(
    //                   data[i],
    //                   size: 35,
    //                   color: i == selectedIndex ? Colors.white : Colors.white,
    //                 ),
    //               ),
    //             ),
    //           ),
    //           scrollDirection: Axis.horizontal,
    //         ),
    //       ),
    //     ));
  }
}

// class Navbar extends StatelessWidget {
//   const Navbar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     int selectedIndex = 0;
//     List<IconData> data = [
//       Icons.home_outlined,
//       Icons.account_circle_outlined,
//       Icons.edit_note_outlined,
//       Icons.shopping_cart_checkout
//     ];
//     return Padding(
//         padding: EdgeInsets.all(20),
//         child: Material(
//           borderRadius: BorderRadius.circular(20),
//           color: Color(0xFFFFB133),
//           child: Container(
//             height: 55,
//             width: double.infinity,
//             child: ListView.builder(
//               itemCount: data.length,
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               itemBuilder: (ctx, i) => Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: GestureDetector(
//                   onTap: () {
//                   },
//                   child: AnimatedContainer(
//                     duration: Duration(milliseconds: 250),
//                     width: 35,
//                     decoration: BoxDecoration(
//                       border: i == selectedIndex
//                           ? Border(
//                               top: BorderSide(width: 3.0, color: Colors.white))
//                           : null,
//                       gradient: i == selectedIndex
//                           ? LinearGradient(
//                               colors: [Colors.white, Color(0xFFFF9D00)],
//                               begin: Alignment.topCenter,
//                               end: Alignment.bottomCenter)
//                           : null,
//                     ),
//                     child: Icon(
//                       data[i],
//                       size: 35,
//                       color: i == selectedIndex ? Colors.white : Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               scrollDirection: Axis.horizontal,
//             ),
//           ),
//         ));
//   }
// }
