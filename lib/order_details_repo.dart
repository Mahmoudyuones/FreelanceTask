import 'package:freelance_task/order_detils_data_source.dart';
import 'package:freelance_task/order_info_model.dart';

class OrderDetailsRepo {
  final OrderDetilsDataSource dataSource;
  OrderDetailsRepo(this.dataSource);
  OrderInfoModel getOrderinf() {
    return dataSource.getOrderinf();
  }
}
