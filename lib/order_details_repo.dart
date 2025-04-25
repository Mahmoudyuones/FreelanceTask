import 'package:dartz/dartz.dart';
import 'package:freelance_task/order_detils_data_source.dart';
import 'package:freelance_task/order_info_model.dart';

class OrderDetailsRepo {
  final OrderDetilsDataSource dataSource;
  OrderDetailsRepo(this.dataSource);
  Future<Either<Failure, OrderInfoModel>> getOrderinf() async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      final OrderInfoModel orderInfoModel = dataSource.getOrderinf();
      return Right(orderInfoModel);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}

class Failure {
  final String message;
  const Failure(this.message);
}
