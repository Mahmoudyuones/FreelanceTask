import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_task/loading_indecator.dart';
import 'package:freelance_task/item_info_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.itemInfo});
  final ItemInfoModel itemInfo;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(8.h),
      child: Row(
        children: [
          SizedBox(
            width: 100.w,
            height: 100.w,

            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl:
                    itemInfo.imageUrl ??
                    'https://imgs.search.brave.com/DzOyhFO0fjZ-OnEOqCVIWnV6qHWY_T43bB-bfgHRUFk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA0Lzk5LzkzLzMx/LzM2MF9GXzQ5OTkz/MzExN19aQVVCZnYz/UDFIRU9zWkRybmti/TkN0NGpjM0FvZEFy/bC5qcGc',
                fit: BoxFit.fill,
                placeholder: (_, __) => const LoadingIndecator(),
                errorWidget:
                    (_, __, ___) =>
                        const Icon(Icons.image_not_supported_outlined),
              ),
            ),
          ),

          SizedBox(width: 4.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      itemInfo.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: min(16.sp, 18),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Color: ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: min(14.sp, 18),
                            fontFamily: 'Poppins',
                            color: Colors.grey.shade600,
                          ),
                        ),
                        Text(
                          itemInfo.color,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: min(14.sp, 18),
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Size:',
                          style: TextStyle(
                            color: Colors.grey.shade600,

                            fontWeight: FontWeight.w400,
                            fontSize: min(14.sp, 18),
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          itemInfo.size,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: min(14.sp, 18),
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Units:',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w400,
                            fontSize: min(14.sp, 18),
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          itemInfo.units.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: min(14.sp, 18),
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "${itemInfo.price.toString()} EGP",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: min(14.sp, 18),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
