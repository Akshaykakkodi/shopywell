import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/core/enums/enums.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/gen/assets.gen.dart';
import 'package:shopywell/application/core/theme/app_colors.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';
import 'package:shopywell/application/home/home_bloc.dart';
import 'package:shopywell/domain/product/model/product_model.dart';
import 'package:shopywell/presentation/dashboard/widgets/category_widget.dart';
import 'package:shopywell/presentation/dashboard/widgets/deal_tile.dart';
import 'package:shopywell/presentation/dashboard/widgets/item_tile.dart';
import 'package:shopywell/presentation/dashboard/widgets/searchbar_widget.dart';
import 'package:shopywell/presentation/widgets/primary_button.dart';

import 'widgets/custom_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeBloc>().add(GetProducts());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          backgroundColor: Color(0xffFDFDFD),
          title: Row(
            children: [
              Assets.images.png.sidemenu.image(scale: 2),
              Spacer(),
              Assets.images.png.logo.image(height: 32),
              Spacer(),
              Assets.images.png.userpic.image(scale: 2),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: Size(300, 70),
            child: Column(
              children: [
                Gap(20),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SearchBarWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverGap(16),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("All Featured", style: context.textStyle.s18.w600),
                    Spacer(),
                    CustomTile(
                      name: "Sort",
                      assetPath: Assets.images.png.sort.path,
                    ),
                    Gap(20),
                    CustomTile(
                      name: "Filter",
                      assetPath: Assets.images.png.filter.path,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverGap(16),
        CategoryWidget(),
        SliverGap(16),

        SliverToBoxAdapter(
          child: ClipRRect(
            // borderRadius: BorderRadius.circular(12) ,
            child: Container(
              height: 189,
              // width: context.getSize.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      child: Assets.images.png.banner.image(fit: BoxFit.cover),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        SliverGap(16),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                DealTile(
                  color: AppColors.lightBlue,
                  title: "Deal Of the day",
                  subtitle: "22h 55m 20s remaining",
                  icon: Icon(Icons.alarm, color: Colors.white, size: 20),
                ),

                Gap(16),
              ],
            ),
          ),
        ),
        MainProductList(),
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                CachedNetworkImage(
                  imageUrl:
                      "https://github.com/Akshaykakkodi/images/blob/main/add.png?raw=true",
                  fit: BoxFit.cover,width: context.getSize.width,
                ),
                Gap(16),
                DealTile(
                  color: AppColors.pink,
                  title: "Trending Products",
                  subtitle: "Last Date 29/02/22",
                  icon: Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                    size: 17,
                  ),
                ),
                Gap(16),
                  CachedNetworkImage(
                  imageUrl:
                      "https://github.com/Akshaykakkodi/images/blob/main/sale.png?raw=true",
                  fit: BoxFit.cover,width: context.getSize.width,
                ),
              ],
            ),
          ),
        ),

        SliverGap(20),
      ],
    );
  }
}

class MainProductList extends StatelessWidget {
  const MainProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 260,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, homeState) {
            return homeState.getProductsState == ApiState.success
                ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 12,
                    children: [
                      Gap(2),
                      ...List.generate(
                        homeState.products.length,
                        (index) => ItemTile(
                          height: 240,
                          imageHeight: 124,
                          product: homeState.products[index],
                        ),
                      ),
                      Gap(2),
                    ],
                  ),
                )
                : homeState.getProductsState == ApiState.loading
                ? CustomLoader()
                : SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
