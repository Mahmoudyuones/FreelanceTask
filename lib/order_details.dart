import 'package:flutter/material.dart';
import 'package:freelance_task/item_info.dart';
import 'package:freelance_task/item_info_model.dart';
import 'package:freelance_task/order_info.dart';
import 'package:freelance_task/order_info_model.dart';

class OrderDetails extends StatelessWidget {
  static const String routeName = '/orderDetails';
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: ItemInfo(
                      itemInfo: ItemInfoModel(
                        name: 'Pullover',
                        color: 'black',
                        size: 'M',
                        units: "1",
                        price: "150 EGP ",
                        imageUrl:
                            'https://imgs.search.brave.com/SlqZRbGSjfNShpsX24qYcRjA1P9JckY9z8ahRPtyq40/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9iZXlv/bmR5b2dhLmNvbS9j/ZG4vc2hvcC9maWxl/cy9OSDc4NjFfd29v/ZGxhbmRfMzA0MTYu/anBnP3Y9MTc0MTcy/MTc1NSZ3aWR0aD0x/OTIw',
                      ),
                    ),
                  );
                },
                itemCount: 3,
              ),
            ),

            OrderInfo(
              orderInfo: OrderInfoModel(
                address: 'Sohag',
                discount: 15,
                shippingFee: 30,
                totalPrice: 500,
                paymentOnDelivery: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
