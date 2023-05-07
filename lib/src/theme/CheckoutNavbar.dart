import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:simpelin/src/router/constant.dart';
import 'package:simpelin/src/theme/theme.dart';
import 'package:get/get.dart';

class CheckoutNavbar extends StatefulWidget {
  const CheckoutNavbar({Key? key}) : super(key: key);

  @override
  State<CheckoutNavbar> createState() => _CheckoutNavbarState();
}

class _CheckoutNavbarState extends State<CheckoutNavbar> with SingleTickerProviderStateMixin {
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
          width: 330,
          height: 51,
          color: yellowColor,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                Text(
                    'Pesanan',
                  style: poppinsTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: whiteColor
                  ),
                ),
                SizedBox(width: 8,),
                Text(
                  '|',
                  style: poppinsTextStyle.copyWith(
                    fontSize: 35,
                    color: whiteColor
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
