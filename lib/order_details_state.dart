import 'package:freelance_task/order_info_model.dart';

abstract class OrderDetailsState {}

class OrderDetailsInitial extends OrderDetailsState {}

class OrderDetailsLoading extends OrderDetailsState {
  final OrderInfoModel gommyOrderInfoModel;
  OrderDetailsLoading(this.gommyOrderInfoModel);
}

class OrderDetailsSucces extends OrderDetailsState {
  final OrderInfoModel orderInfoModel;
  OrderDetailsSucces(this.orderInfoModel);
}

class OrderDetailsError extends OrderDetailsState {
  final String errorMessage;
  OrderDetailsError(this.errorMessage);
}

class OrderDetailsEmpty extends OrderDetailsState {
  final String errorMessage;
  OrderDetailsEmpty(this.errorMessage);
}
