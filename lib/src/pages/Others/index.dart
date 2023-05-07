import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simpelin/src/controller/CartController.dart';
import 'package:simpelin/src/pages/Navbar.dart';
import 'package:simpelin/src/storage/preference.dart';
import 'package:simpelin/src/theme/theme.dart';
import 'package:get/get.dart';
import 'package:simpelin/src/controller/ProdukController.dart';
import 'package:simpelin/src/router/constant.dart';


class Others extends StatefulWidget {
  const Others({Key? key}) : super(key: key);

  @override
  State<Others> createState() => _OthersState();
}

class _OthersState extends State<Others> {
  final ProdukController produk = Get.put(ProdukController());
  CartController cart = Get.put(CartController());

  String? userId;
  getAtribute() async {
    userId = await getUser();

    String? user;
    setState(() {
      user = userId;
    });
  }
  @override
  void initState() {
    super.initState();
    // getAtribute();
    getAtribute();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 500,
                    decoration: BoxDecoration(
                        color: yellowColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        'Others',
                        style: poppinsTextStyle.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 35, right: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 49,
                          width: 292,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black87,
                                  blurRadius: 2,
                                  offset: const Offset(0, 1))
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 2, bottom: 2, left: 20),
                                child: Text(
                                  'Search Product',
                                  style: poppinsTextStyle.copyWith(
                                      color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 2, bottom: 2, left: 130),
                                child: Icon(Icons.search),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: Text(
                  'Snack',
                  style: poppinsTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),

              ),
              Text(userId.toString()),

              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Obx((){
                  if (produk.isLoading.value){
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }else{
                    return ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: produk.produk.length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Container(
                              width: 350,
                              height: 110,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black87,
                                        blurRadius: 2,
                                        offset: Offset(0, 1))
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 110,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            // image: DecorationImage(
                                            //     image: AssetImage('assets/jejamuan.jpg'),
                                            //     fit: BoxFit.cover)
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.network(
                                            produk.produk[index].image!,
                                          ),
                                        ),
                                        // child: CircleAvatar(
                                        //   radius: 10,
                                        //   backgroundImage: produk.produk[index].image!,
                                        // ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              // 'Jejamuan - Snack Herbal',
                                              produk.produk[index].namaProduk!,
                                              style: poppinsTextStyle.copyWith(
                                                  fontWeight: FontWeight.w600, fontSize: 15),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              // 'Snack Herbal cocok dikonsumsi',
                                              produk.produk[index].deskripsi!,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                              style: poppinsTextStyle.copyWith(
                                                  color: Colors.grey, fontSize: 12),
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  height: 19,
                                                  width: 91,
                                                  decoration: BoxDecoration(
                                                      color: Colors.amber[200],
                                                      borderRadius:
                                                      BorderRadius.circular(20)),
                                                  child: Center(
                                                    child: Text(
                                                      // 'Rp 5.000',
                                                      produk.produk[index].harga.toString(),
                                                      style: poppinsTextStyle.copyWith(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 12),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 80),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      userId;
                                                      getUser();
                                                      await cart.addCart(
                                                          userId.toString(),
                                                          produk.produk[index].namaProduk!,
                                                          produk.produk[index].deskripsi!,
                                                          produk.produk[index].stok!,
                                                          produk.produk[index].harga!,
                                                          produk.produk[index].image!);
                                                    },
                                                    child: Icon(
                                                      Icons.shopping_cart,
                                                      color: yellowColor,
                                                      size: 20,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }
                    );
                  }
                })
              ),
              SizedBox(height: 20,),
              // Padding(
              //   padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              //   child: Stack(
              //     children: [
              //       Container(
              //         width: 350,
              //         height: 110,
              //         decoration: BoxDecoration(
              //             color: Colors.white,
              //             boxShadow: [
              //               BoxShadow(
              //                   color: Colors.black87,
              //                   blurRadius: 2,
              //                   offset: const Offset(0, 1))
              //             ],
              //             borderRadius: BorderRadius.circular(10)),
              //       ),
              //       Column(
              //         children: [
              //           Row(
              //             children: [
              //               Container(
              //                 height: 110,
              //                 width: 110,
              //                 decoration: BoxDecoration(
              //                     color: Colors.black,
              //                     borderRadius: BorderRadius.circular(10),
              //                     image: DecorationImage(
              //                         image: AssetImage('assets/jejamuan.jpg'),
              //                         fit: BoxFit.cover)),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text(
              //                       'Jejamuan - Snack herbal',
              //                       style: poppinsTextStyle.copyWith(
              //                           fontWeight: FontWeight.w600,
              //                           fontSize: 15),
              //                     ),
              //                     SizedBox(
              //                       height: 5,
              //                     ),
              //                     Text(
              //                       'Snack herbal cocok dikonsumsi',
              //                       style: poppinsTextStyle.copyWith(
              //                           color: Colors.grey, fontSize: 12),
              //                     ),
              //                     Text(
              //                       'anak masa kini',
              //                       style: poppinsTextStyle.copyWith(
              //                           color: Colors.grey, fontSize: 12),
              //                     ),
              //                     SizedBox(
              //                       height: 5,
              //                     ),
              //                     Row(
              //                       children: [
              //                         Container(
              //                           height: 25,
              //                           width: 100,
              //                           decoration: BoxDecoration(
              //                               color: Colors.amber[200],
              //                               borderRadius:
              //                                   BorderRadius.circular(20)),
              //                           child: Center(
              //                               child: Text(
              //                             'Rp 5.000',
              //                             style: poppinsTextStyle.copyWith(
              //                                 fontWeight: FontWeight.bold,
              //                                 fontSize: 15),
              //                           )),
              //                         ),
              //                         Padding(
              //                           padding: const EdgeInsets.only(left: 80),
              //                           child: Icon(
              //                             Icons.shopping_cart,
              //                             color: yellowColor,
              //                             size: 20,
              //                           ),
              //                         )
              //                       ],
              //                     )
              //                   ],
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(height: 30)
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
