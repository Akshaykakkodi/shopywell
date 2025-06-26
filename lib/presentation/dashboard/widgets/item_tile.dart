import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/route/app_route.dart';

import 'package:shopywell/application/core/theme/app_colors.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';
import 'package:shopywell/domain/product/model/product_model.dart';
import 'package:shopywell/presentation/product/product_detail_page.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    super.key,
    required this.height,
    required this.imageHeight,
    this.width,
    required this.product,
  });

  final double height;
  final double imageHeight;
  final double? width;
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouter.pushScreen(ProductDetailPage(product: product,));
      },
      child: Container(
        width: context.getSize.width * 0.45,
        height:height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: imageHeight,
                child:CachedNetworkImage(imageUrl: product.imageUrl??"",fit: BoxFit.cover, width: context.getSize.width * 0.45 ,),
              ),
            ),
            Gap(4),
            Container(
              width: context.getSize.width * 0.45,
              padding: EdgeInsets.all(4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name ?? "",
                    style: context.textStyle.s12.w500,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    product.subTitle ?? "",
                    style: context.textStyle.s10.w400,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "₹${product.price}",
                    style: context.textStyle.s12.w500,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        "₹${product.originalPrice}",
                        style:
                            context.textStyle.s12.w300
                                .copyWith(
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: AppColors.textGrey1,
                                )
                                .grey1,
                      ),
                      Gap(8),
                      Text(
                        "${product.offer} Off",
                        style: context.textStyle.s10.w400.red,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      AbsorbPointer(
                        absorbing: true,
                        child: RatingBar.builder(
                          initialRating: product.rating?.toDouble() ?? 0,
                          minRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemSize: 15,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder:
                              (context, _) =>
                                  Icon(Icons.star, color: Colors.amber, size: 5),
                          onRatingUpdate: (rating) {},
                        ),
                      ),
                      Text(
                        "${product.ratingCount}",
                        style: context.textStyle.s10.w400.grey1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
