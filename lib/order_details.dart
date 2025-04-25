import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_task/app_text.dart';
import 'package:freelance_task/default_eleveted_botton.dart';
import 'package:freelance_task/item_info.dart';
import 'package:freelance_task/order_info.dart';
import 'package:freelance_task/order_info_model.dart';
import 'package:intl/intl.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key, required this.orderInfoModel});

  final OrderInfoModel orderInfoModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order No : ${orderInfoModel.orderNo}',
                style: AppTextStyles.title.copyWith(fontSize: min(16.sp, 20)),
              ),
              Text(
                DateFormat('dd/MM/yyyy').format(orderInfoModel.orderDate),
                style: AppTextStyles.title.copyWith(fontSize: min(16.sp, 20)),
              ),
            ],
          ),
          SizedBox(height: 9.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Tracking number : ',
                    style: AppTextStyles.title.copyWith(
                      fontSize: min(16.sp, 20),
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Text(
                    orderInfoModel.trackingNo,
                    style: AppTextStyles.title.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                orderInfoModel.orderStatus,
                style: AppTextStyles.title.copyWith(
                  color:
                      orderInfoModel.orderStatus.toLowerCase() == 'delivered'
                          ? Colors.green
                          : Colors.black,
                  fontSize: min(16.sp, 20),
                ),
              ),
            ],
          ),
          SizedBox(height: 9.h),
          Text(
            '${orderInfoModel.itemInfoList.length} Items',
            style: AppTextStyles.title.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: min(16.sp, 20),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  bool isTablet = constraints.maxWidth >= 600;
                  bool isportait =
                      MediaQuery.of(context).orientation ==
                      Orientation.portrait;
                  if (isTablet && !isportait) {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2,
                        mainAxisSpacing: 8.w,
                        crossAxisSpacing: 8.w,
                      ),
                      itemCount: orderInfoModel.itemInfoList.length,
                      itemBuilder: (_, index) {
                        final item = orderInfoModel.itemInfoList[index];
                        return ItemInfo(itemInfo: item);
                      },
                    );
                  } else {
                    return ListView.builder(
                      itemCount: orderInfoModel.itemInfoList.length,
                      itemBuilder: (_, index) {
                        final item = orderInfoModel.itemInfoList[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: ItemInfo(itemInfo: item),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ),

          OrderInfo(orderInfo: orderInfoModel),
          SizedBox(height: 27.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DefaultElevetedBotton(
                bacgroundColor: Color(0xFFAA7A24),
                forgroundColor: Colors.white,
                text: 'Reorder',
                hasBorder: false,
                onPressed: reOrder,
              ),
              DefaultElevetedBotton(
                text: 'Leave Feedback',
                bacgroundColor: Colors.grey.shade300,
                forgroundColor: Colors.black,
                hasBorder: true,
                onPressed: leaveFeedback,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void reOrder() {}
  void leaveFeedback() {}
}
