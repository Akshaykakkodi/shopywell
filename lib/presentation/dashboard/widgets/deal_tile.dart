import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';

class DealTile extends StatelessWidget {
  const DealTile({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.icon,
  });
  final Color color;
  final String title;
  final String subtitle;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      width: context.getSize.width,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: context.textStyle.s16.w500.white),
              Row(
                children: [
                  icon,
                  Gap(2),
                  Text(subtitle, style: context.textStyle.s12.w400.white),
                ],
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Text("View All", style: context.textStyle.s12.w500.white),
                Icon(Icons.arrow_right_alt_outlined, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}