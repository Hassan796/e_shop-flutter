import 'package:e_shop/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopMyCart extends StatelessWidget {
  final String headline;
  const TopMyCart({Key? key, required this.headline}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_sharp)),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                headline,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.grey2),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
