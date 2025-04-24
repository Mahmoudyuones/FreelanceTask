import 'package:flutter/material.dart';
import 'package:freelance_task/default_eleveted_botton.dart';
import 'package:freelance_task/item_info.dart';
import 'package:freelance_task/item_info_model.dart';
import 'package:freelance_task/order_info.dart';
import 'package:freelance_task/order_info_model.dart';
import 'package:intl/intl.dart';

class OrderDetails extends StatelessWidget {
  OrderDetails({super.key, required this.orderInfoModel});
  final DateFormat dateFormat = DateFormat('dd/MM/yyyy');
  final OrderInfoModel orderInfoModel;
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order No : ${orderInfoModel.orderNo}',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
              ),
              Text(
                dateFormat.format(orderInfoModel.orderDate),
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
          SizedBox(height: hight * .01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Tracking number : ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Text(
                    orderInfoModel.trackingNo,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Text(
                orderInfoModel.orderStatus,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  color:
                      orderInfoModel.orderStatus.toLowerCase() == 'delivered'
                          ? Colors.green
                          : Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: hight * .01),
          Text(
            '${orderInfoModel.itemInfoList.length} Items',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              fontFamily: 'Poppins',
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  bool isTablet = constraints.maxWidth >= 600;
                  if (isTablet) {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
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
          SizedBox(height: hight * .03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultElevetedBotton(
                bacgroundColor: Color(0xFFAA7A24),
                forroundColor: Colors.white,
                text: 'Reorder',
                hasBorder: false,
              ),
              DefaultElevetedBotton(
                text: 'Leave Feedback',
                bacgroundColor: Colors.grey.shade300,
                forroundColor: Colors.black,
                hasBorder: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
