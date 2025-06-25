import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key, required this.name, required this.assetPath,
  });
  final String name;
  final String assetPath;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6), boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],),
      child: Row(
        children: [
          Text(name,style: context.textStyle.s12.w400,),
          Gap(6),
         Image.asset(assetPath,scale: 2,)
        ],
      ),
    );
  }
}