import 'package:freelance_task/item_info_model.dart';
import 'package:freelance_task/order_detils_data_source.dart';
import 'package:freelance_task/order_info_model.dart';

class OrderDetailDataSourceGommyData extends OrderDetilsDataSource {
  @override
  OrderInfoModel getOrderinf() {
    List<ItemInfoModel> orderItems = List.generate(
      10,
      (index) => ItemInfoModel(
        name: "Pants",
        color: "Black",
        size: " xxxx Larg",
        units: 5,
        price: 5 * 150,
        imageUrl:
            "https://imgs.search.brave.com/dsC0o2A17fUJQZeTIqr59WX5N7qtSR92e77JIfc89Vg/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNTA0/NjgxMDAxL3Bob3Rv/L3dpbGxpbmctaGlz/LXBhbnRzLWNsb3Nl/ZC5qcGc_cz02MTJ4/NjEyJnc9MCZrPTIw/JmM9X0MwY1VGZV8x/SHRQN1NUMXh2aWs1/RFd5LVZsVlZpYjZY/bHRRZlJOdEVYaz0",
      ),
    );
    return OrderInfoModel(
      address: 'sohag',
      discount: 15,
      shippingFee: 15,
      totalPrice: 800,
      paymentOnDelivery: 10,
      orderNo: '252626',
      orderDate: DateTime.now(),
      orderStatus: 'Delivered',
      trackingNo: '12Tvsd',
      itemInfoList: orderItems,
    );
  }
}
