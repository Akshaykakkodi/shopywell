import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/route/app_route.dart';
import 'package:shopywell/application/core/theme/app_colors.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';
import 'package:shopywell/domain/product/model/product_model.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key, required this.product});
  final ProductModel product;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xffFDFDFD),
            pinned: true,
            leading: GestureDetector(
              onTap: () {
                AppRouter.pop();
              },
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
          SliverGap(16),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SizedBox(
                      child: CachedNetworkImage(
                        imageUrl: widget.product.imageUrl ?? "",
                        height: 213,
                        width: context.getSize.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Gap(12),
                  Text(
                    widget.product.name ?? "",
                    style: context.textStyle.s20.w600,
                  ),
                  Text(
                    widget.product.subTitle ?? "",
                    style: context.textStyle.s14.w400,
                  ),
                  Gap(16),
                  Row(
                    children: [
                      AbsorbPointer(
                        absorbing: true,
                        child: RatingBar.builder(
                          initialRating: widget.product.rating?.toDouble() ?? 0,
                          minRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemSize: 20,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder:
                              (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 5,
                              ),
                          onRatingUpdate: (rating) {},
                        ),
                      ),
                      Gap(8),
                      Text(
                        "${widget.product.ratingCount}",
                        style: context.textStyle.s14.w400.secondary,
                      ),
                    ],
                  ),

                  Gap(12),
                  Row(
                    children: [
                      Text(
                        "₹${widget.product.price}",
                        style: context.textStyle.s12.w500,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Gap(8),
                      Text(
                        "₹${widget.product.originalPrice}",
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
                        "${widget.product.offer} Off",
                        style: context.textStyle.s10.w400.red,
                      ),
                    ],
                  ),
                  Gap(12),
                  Text("Product Details", style: context.textStyle.s14.w500),
                  Gap(10),
                  Text(
                    "Perhaps the most iconic sneaker of all-time, this original Chicago? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More",
                    style: context.textStyle.s12.w400,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
