import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_shop/core/constant/color.dart';
import 'package:e_shop/linkapi.dart';
import 'package:flutter/material.dart';

class CustomCardCart extends StatelessWidget {
  final String productname;
  final String productprice;
  final String productcount;
  final String imagename;
  final void Function()? onAdd;
  final void Function()? onRemove;
  const CustomCardCart(
      {Key? key,
      required this.productname,
      required this.productprice,
      required this.imagename,
      required this.productcount,
      required this.onAdd,
      required this.onRemove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                    // color: AppColor.grey,
                    child: CachedNetworkImage(
                  imageUrl: "${AppLink.imagestItems}/$imagename",
                  fit: BoxFit.fill,
                  height: 100,
                ))),
            Expanded(
                flex: 3,
                child: ListTile(
                  title: Text(
                    productname,
                    style: const TextStyle(fontFamily: "sans", fontSize: 17),
                  ),
                  subtitle: Text(
                    productprice,
                    style: const TextStyle(
                        color: AppColor.secondColor,
                        fontFamily: "sans",
                        fontSize: 16),
                  ),
                )),
            Expanded(
                child: Column(
              children: [
                Container(
                  height: 40,
                  child:
                      IconButton(onPressed: onAdd, icon: const Icon(Icons.add)),
                ),
                Container(
                  height: 20,
                  child: Text(
                    productcount,
                    style: const TextStyle(
                        fontFamily: "sans", fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: IconButton(
                      onPressed: onRemove, icon: const Icon(Icons.remove)),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
