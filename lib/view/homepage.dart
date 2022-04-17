// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/global/themes.dart';
import 'package:task/widget/Bigtext.dart';

import '../controllers/product.dart';
import '../widget/product_widget.dart';

class HomePage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: BigText(text: 'Get data from api using Getx'),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 45),
            child: Text(
              'SEARCH FOR',
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w800, fontSize: 27.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'Products',
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w800, fontSize: 27.0),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 25,
                            child: Image.asset(
                              "assets/icons/search.png",
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Color(0xffF4F5F7),
                                border: InputBorder.none,
                                hintText: 'Search now'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    height: 47,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: primarycolor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Icon(
                      Icons.filter_alt_rounded,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(child: BigText(text: 'Shop Now')),
                TextButton(onPressed: () {}, child: Text('see all'))
              ],
            ),
          ),

          // Show data from api  **********************

          Obx(() {
            if (productController.isLoading.value)
              return Center(child: CircularProgressIndicator());
            else
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: GridView.count(
                          reverse: true,
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          crossAxisSpacing: 6.0,
                          childAspectRatio: 2 / 2.7,
                          mainAxisSpacing: 8.0,
                          children: List.generate(
                              productController.productList.length, (index) {
                            return ProductTile(
                                productController.productList[index]);
                          })),
                    ),
                  ],
                ),
              );
          })
        ],
      ),
    );
  }
}
