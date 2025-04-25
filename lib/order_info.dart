import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_task/app_text.dart';
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
                      style: AppTextStyles.subTitle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('shipping address', style: AppTextStyles.subTitle),
                    Text('discount', style: AppTextStyles.subTitle),
                    Text('Payment on delivery', style: AppTextStyles.subTitle),
                    Text('shipping fee', style: AppTextStyles.subTitle),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 27.h),
                    Text(orderInfo.address, style: AppTextStyles.subTitle),
                    Text(
                      '${orderInfo.discount.toString()} %',
                      style: AppTextStyles.subTitle,
                    ),
                    Text(
                      orderInfo.paymentOnDelivery.toString(),
                      style: AppTextStyles.subTitle,
                    ),
                    Text(
                      orderInfo.shippingFee.toString(),
                      style: AppTextStyles.subTitle,
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
                  style: AppTextStyles.subTitle.copyWith(
                    fontWeight: FontWeight.w800,
                    fontSize: min(16.sp, 20),

                    color: Colors.black54,
                  ),
                ),
                Text(
                  '${orderInfo.totalPrice.toString()} EGP',
                  style: AppTextStyles.subTitle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: min(18.sp, 20),

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
