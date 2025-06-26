import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/core/enums/enums.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/gen/assets.gen.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';
import 'package:shopywell/application/home/home_bloc.dart';
import 'package:shopywell/presentation/dashboard/widgets/custom_tile.dart';
import 'package:shopywell/presentation/dashboard/widgets/item_tile.dart';
import 'package:shopywell/presentation/dashboard/widgets/searchbar_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shopywell/presentation/widgets/primary_button.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
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
                    Text("52,082+ Items", style: context.textStyle.s18.w600),
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

        // SliverPadding(padding: EdgeInsets.symmetric(horizontal: 16),sliver: SliverToBoxAdapter(
        //   child: Column(
        //     children: [

        //     ],
        //   ),
        // ),),
        SliverPadding(
          padding: const EdgeInsets.all(8),
          sliver: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
             
              return
               state.getProductsState==ApiState.success? 
               SliverMasonryGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                itemBuilder: (context, index) {
                  bool isTall(int index) {
                    final shortIndexes = {0, 3, 4, 7, 8};
                    return !shortIndexes.contains(index);
                  }

                  return ItemTile(
                    height: isTall(index) == true ? 305 : 248,
                    imageHeight: isTall(index) == true ? 164 : 136,
                    product: state.products[index],
                  );
                },
                childCount: state.products.length,
              ): state.getProductsState==ApiState.loading?SliverToBoxAdapter(child: CustomLoader()):SliverToBoxAdapter(child: SizedBox.shrink(),);
            },
          ),
        ),

        SliverGap(20),
      ],
    );
  }
}
