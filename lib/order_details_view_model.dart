import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelance_task/item_info_model.dart';
import 'package:freelance_task/order_details_repo.dart';
import 'package:freelance_task/order_details_state.dart';
import 'package:freelance_task/order_info_model.dart';
import 'package:freelance_task/server_locator.dart';

class OrderDetailsViewModel extends Cubit<OrderDetailsState> {
  OrderDetailsViewModel() : super(OrderDetailsInitial()) {
    repo = OrderDetailsRepo(ServerLocator.orderDetailsDataSourc);
    getOrderDetails();
  }
  late final OrderDetailsRepo repo;
  void getOrderDetails() async {
    emit(OrderDetailsLoading(orderInfoModel));
    final result = await repo.getOrderinf();
    result.fold(
      (failure) {
        emit(OrderDetailsError(failure.message));
      },
      (orderInfoModel) {
        emit(OrderDetailsSucces(orderInfoModel));
      },
    );
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
