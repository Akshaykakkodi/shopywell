import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/core/extension/extensions.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGap(context.getSize.height*0.45),
        SliverToBoxAdapter(
          child: Center(child: Text("Search")),
        )
      ],
    );
  }
}