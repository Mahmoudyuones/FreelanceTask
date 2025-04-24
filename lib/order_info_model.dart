import 'package:freelance_task/item_info_model.dart';

class OrderInfoModel {
  String orderNo;
  DateTime orderDate;
  String orderStatus;
  String trackingNo;
  String address;
  double discount;
  double shippingFee;
  double totalPrice;
  double paymentOnDelivery;
  List<ItemInfoModel> itemInfoList = [];
  OrderInfoModel({
    required this.address,
    required this.discount,
    required this.shippingFee,
    required this.totalPrice,
    required this.paymentOnDelivery,
    required this.orderNo,
    required this.orderDate,
    required this.orderStatus,
    required this.trackingNo,
    required this.itemInfoList,
  });
}
