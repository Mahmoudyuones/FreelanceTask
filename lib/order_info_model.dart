class OrderInfoModel {
  String address;
  double discount;
  double shippingFee;
  double totalPrice;
  double paymentOnDelivery;
  OrderInfoModel({
    required this.address,
    required this.discount,
    required this.shippingFee,
    required this.totalPrice,
    required this.paymentOnDelivery,
  });
}
