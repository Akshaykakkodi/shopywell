import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/gen/assets.gen.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';
import 'package:shopywell/domain/category/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Container(
          padding: EdgeInsets.only(top: 8, bottom: 8, ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
             boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ],
          ),
          child:SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 16,
              children: [
                Gap(1),
               ...List.generate(categories.length, (index) =>Column(
                 children: [
                   ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Container(height: 56,width: 56,color: Colors.grey.shade200,child: Image.asset(categories[index].imageUrl??"",fit: BoxFit.cover,),),),
                    Gap(8),
                   Text(categories[index].name??"", style: context.textStyle.s10.w400
                       .copyWith(color: Colors.black54) ),  
                 ],
               ),)
            ],),
          ),
        ),
      ),
    );
  }
}


List<CategoryModel> categories=[
  CategoryModel(name: "Fashion", imageUrl: Assets.images.png.fashion.path),
  CategoryModel(name: "Beauty", imageUrl:  Assets.images.png.beauty.path),
  CategoryModel(name: "Kids", imageUrl: Assets.images.png.kids.path),
  CategoryModel(name: "Men", imageUrl: Assets.images.png.mens.path),
  CategoryModel(name: "Women", imageUrl: Assets.images.png.women.path),  
];