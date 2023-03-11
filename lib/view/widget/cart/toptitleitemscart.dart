import 'package:e_shop/core/constant/color.dart';
import 'package:flutter/material.dart';

class TopTitleItemsCart extends StatelessWidget {
  final String title;
  const TopTitleItemsCart({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.only(top: 3),
      // height: 30,
      decoration: BoxDecoration(
          color: AppColor.thirdColor, borderRadius: BorderRadius.circular(20)),
      child: Text(
        title,
        style: const TextStyle(
            color: AppColor.backgroundcolor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: "sans"),
        textAlign: TextAlign.center,
      ),
    );
  }
}
