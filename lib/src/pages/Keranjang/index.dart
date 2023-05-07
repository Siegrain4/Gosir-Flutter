import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simpelin/src/controller/CartController.dart';
import 'package:simpelin/src/router/constant.dart';
import 'package:simpelin/src/theme/CheckoutNavbar.dart';
import 'package:simpelin/src/theme/theme.dart';
import 'package:get/get.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({Key? key}) : super(key: key);

  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  int _itemCount = 0;
  CartController cart = Get.put(CartController());

  @override
  void initState() {
    super.initState();
    // getAtribute();
    cart.getCart();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: yellowColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Get.offAllNamed(othersRoute),
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Keranjang',
                    style: poppinsTextStyle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black87,
                            blurRadius: 2,
                            offset: const Offset(0, 1))
                      ]),
                  child: Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 2, bottom: 2, left: 20),
                        child: Text(
                          'Search Product',
                          style: poppinsTextStyle.copyWith(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 2, bottom: 2, left: 155),
                        child: Icon(Icons.search),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Colors.amber[200],
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(width: 1, color: Colors.amber)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Snack',
                      style: poppinsTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Obx(() {
                if (cart.isLoading.value) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: cart.cart.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10, left: 35),
                          child: Stack(
                            children: [
                              Container(
                                height: 90,
                                width: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black87,
                                          blurRadius: 2,
                                          offset: const Offset(0, 1))
                                    ]),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 14),
                                    child: Container(
                                      height: 90,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          // image: DecorationImage(
                                          //     image: AssetImage(
                                          //         'assets/cangcomak.webp'),
                                          //     fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.black),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          cart.cart[index].image!
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 20, left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          cart.cart[index].namaProduk!,
                                          style: poppinsTextStyle.copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          cart.cart[index].deskripsi!,
                                          style: poppinsTextStyle.copyWith(
                                              color: Colors.grey, fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 18,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  color: Colors.amber[200],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Center(
                                                child: Text(
                                                  cart.cart[index].harga!,
                                                  style:
                                                      poppinsTextStyle.copyWith(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            _itemCount != 0? new IconButton(icon: new Icon(Icons.remove,size: 15,),onPressed: ()=>setState(()=>_itemCount--),):new Container(),
                                            new Text(_itemCount.toString()),
                                            new IconButton(icon: new Icon(Icons.add,size: 15,),onPressed: ()=> setState(()=>_itemCount++))
                                            // Icon(
                                            //   Icons.indeterminate_check_box,
                                            //   color: Colors.grey,
                                            //   size: 15,
                                            // ),
                                            // Text(
                                            //   '0',
                                            //   style: poppinsTextStyle.copyWith(
                                            //       fontSize: 10),
                                            // ),
                                            // Icon(
                                            //   Icons.add_box,
                                            //   color: yellowColor,
                                            //   size: 15,
                                            // )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      });
                }
              }),

            ],
          ),
        ],
      ),
      // bottomNavigationBar: CheckoutNavbar(),
      bottomNavigationBar:  Container(
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
                    ),
                    SizedBox(width: 5,),
                    Text(
                      '13 pesanan',
                      style: poppinsTextStyle.copyWith(
                          color: whiteColor,
                          fontSize: 14
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Total : Rp 105.000',
                      style: poppinsTextStyle.copyWith(
                        color: whiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}
