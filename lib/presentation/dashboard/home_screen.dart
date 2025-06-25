import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/gen/assets.gen.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';
import 'package:shopywell/presentation/dashboard/widgets/searchbar_widget.dart';

import 'widgets/custom_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
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
      ],
    );
  }
}
