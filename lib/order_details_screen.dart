import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_task/app_text.dart';
import 'dart:math';
import 'package:freelance_task/order_details.dart';
import 'package:freelance_task/order_details_state.dart';
import 'package:freelance_task/order_details_view_model.dart';
import 'package:skeletonizer/skeletonizer.dart';

class OrderDetailsScreen extends StatefulWidget {
  static const String routeName = '/orderDetails';
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  final OrderDetailsViewModel viewModel = OrderDetailsViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(
          'Order Details',
          style: AppTextStyles.title.copyWith(
            color: Colors.black,
            fontSize: min(14.sp, 20),
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),

      body: BlocProvider(
        create: (_) {
          return viewModel;
        },
        child: BlocBuilder<OrderDetailsViewModel, OrderDetailsState>(
          builder: (_, state) {
            if (state is OrderDetailsLoading) {
              return Skeletonizer(
                child: OrderDetails(orderInfoModel: state.gommyOrderInfoModel),
              );
            } else if (state is OrderDetailsError) {
              return Center(child: Text('Some thing went wronge'));
            } else if (state is OrderDetailsEmpty) {
              return Center(child: Text('empty'));
            } else if (state is OrderDetailsSucces) {
              return OrderDetails(orderInfoModel: state.orderInfoModel);
            } else {
              return SizedBox();
            }
          },
        ),
      ),
    );
  }
}
