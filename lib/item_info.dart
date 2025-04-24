import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freelance_task/loading_indecator.dart';
import 'package:freelance_task/item_info_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.itemInfo});
  final ItemInfoModel itemInfo;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: width * .25,
            height: width * .25,

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

          SizedBox(width: width * .05),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemInfo.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Color : ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            color: Colors.grey.shade600,
                          ),
                        ),
                        Text(
                          itemInfo.color,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Units : ',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          itemInfo.units.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    SizedBox(height: width * .06),
                    Row(
                      children: [
                        Text(
                          'Size : ',
                          style: TextStyle(
                            color: Colors.grey.shade600,

                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          itemInfo.size,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),

                    Text(
                      "${itemInfo.price.toString()} EGP",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
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
