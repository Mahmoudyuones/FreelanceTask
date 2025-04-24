import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelance_task/item_info_model.dart';
import 'package:freelance_task/order_details_repo.dart';
import 'package:freelance_task/order_details_state.dart';
import 'package:freelance_task/order_info_model.dart';
import 'package:freelance_task/server_locator.dart';

class OrderDetailsViewModel extends Cubit<OrderDetailsState> {
  OrderDetailsViewModel() : super(OrderDetailsInitial()) {
    repo = OrderDetailsRepo(ServerLocator.orderDetailsDataSourc);
  }
  late final OrderDetailsRepo repo;
  void getOrderDetails() {
    emit(OrderDetailsLoading(orderInfoModel));
    try {
      final OrderInfoModel orderDetails = repo.getOrderinf();
      if (orderDetails.itemInfoList.isEmpty) {
        emit(OrderDetailsEmpty("No data found"));
      } else {
        emit(OrderDetailsSucces(orderDetails));
      }
    } catch (e) {
      emit(OrderDetailsError(e.toString()));
    }
  }

  OrderInfoModel orderInfoModel = OrderInfoModel(
    address: "address",
    discount: 15,
    shippingFee: 15,
    totalPrice: 800,
    paymentOnDelivery: 10,
    orderNo: "252626",
    orderDate: DateTime.now(),
    orderStatus: "Delevired",
    trackingNo: "15fdsdsf",
    itemInfoList: [
      ItemInfoModel(
        name: "name",
        color: "color",
        size: "size",
        units: 5,
        price: 150,
      ),
      ItemInfoModel(
        name: "name",
        color: "color",
        size: "size",
        units: 5,
        price: 150,
      ),
      ItemInfoModel(
        name: "name",
        color: "color",
        size: "size",
        units: 5,
        price: 150,
      ),
    ],
  );
}
