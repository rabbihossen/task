import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            Container(
                height: 90,
                width: 100,
                child: Image.network(
                  product.image,
                  fit: BoxFit.fill,
                )),
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
