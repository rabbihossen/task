// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/widget/Bigtext.dart';

import '../global/themes.dart';
import '../model/product.dart';

class ProductTile extends StatelessWidget {
  final Products product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              child: SizedBox(
                  height: 90,
                  width: 100,
                  child: Image.network(
                    product.image,
                    fit: BoxFit.fill,
                  )),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(20.0)), //this right here
                        child: Container(
                          height: 370,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://i.pinimg.com/280x280_RS/e8/38/5e/e8385e5360f3f955780cada0ba25e716.jpg"),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Rabbi Hossen",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        Text(
                                          "Dhaka,Bangladesh",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                    ElevatedButton.icon(
                                      style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(0),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Color.fromARGB(
                                                      238, 251, 242, 237)),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          ))),
                                      icon: Icon(
                                        Icons.person_add_sharp,
                                        color: primarycolor,
                                      ),
                                      label: Text(
                                        "Follow",
                                        style: TextStyle(
                                          color: primarycolor,
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    product.image,
                                    fit: BoxFit.fill,
                                    height: 234,
                                    width: 234,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  height: 44,
                                  width: 234,
                                  child: Center(
                                    child: Text("View Post",
                                        style: TextStyle(color: Colors.black)),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffF4F5F7)),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
            ),
            Text(product.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12)),
            Text(
              "Category: ${product.category.name}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.grey, fontSize: 11),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    flex: 3,
                    child: Text(
                      "৳ ${product.price} ",
                      style: TextStyle(
                          color: primarycolor,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    )),
                Expanded(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                          height: 20,
                          color: primarycolor,
                          child: Center(
                              child: Text(
                            "add to cart",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ))),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

OnTapFunction() {}
