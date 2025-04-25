import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_task/order_info_model.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key, required this.orderInfo});
  final OrderInfoModel orderInfo;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Info',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: min(18.sp, 20),
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Text(
                      'shipping address',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: min(14.sp, 20),
                        fontFamily: 'Poppins',
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Text(
                      'discount',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: min(14.sp, 20),
                        fontFamily: 'Poppins',
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Text(
                      'Payment on delivery',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: min(14.sp, 20),
                        fontFamily: 'Poppins',
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Text(
                      'shipping fee',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: min(14.sp, 20),
                        fontFamily: 'Poppins',
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 27.h),
                    Text(
                      orderInfo.address,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: min(14.sp, 20),
                        fontFamily: 'Poppins',
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Text(
                      '${orderInfo.discount.toString()} %',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: min(14.sp, 20),
                        fontFamily: 'Poppins',
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Text(
                      orderInfo.paymentOnDelivery.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: min(14.sp, 20),
                        fontFamily: 'Poppins',
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Text(
                      orderInfo.shippingFee.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: min(14.sp, 20),
                        fontFamily: 'Poppins',
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(color: Colors.grey.shade300),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: min(16.sp, 20),
                    fontFamily: 'Poppins',
                    color: Colors.black54,
                  ),
                ),
                Text(
                  '${orderInfo.totalPrice.toString()} EGP',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: min(18.sp, 20),
                    fontFamily: 'Poppins',
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
