import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/theme/app_colors.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';


class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.loading=false,
    this.color,
    this.height,
    this.width,
  });
  final String title;
  final VoidCallback onPressed;
  final bool? loading;
  final Color? color;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
      if(loading!=true){
        onPressed();
      }
      
      },
      padding: EdgeInsets.zero,
      child: Container(
        width: width ?? context.getSize.width,
        height: height ?? 55,
        decoration: BoxDecoration(
        
          
          color: color ?? AppColors.primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        child: Center(
          child: loading == true
              ? SizedBox(height: 50, child:  CustomLoader(color: Colors.white,))
              : Text(
                  title,
                  style: baseTestStyle.s16.w700.white,
                ),
        ),
      ),
    );
  }
}


class CustomLoader extends StatefulWidget {
  const CustomLoader({super.key, this.size = 40, this.color});
  final double? size;
  final Color? color;

  @override
  State<CustomLoader> createState() => _CustomLoaderState();
}

class _CustomLoaderState extends State<CustomLoader> {
  @override
  Widget build(BuildContext context) {
    return SpinKitCircle(
      size: widget.size ?? 40,
      color: widget.color ?? AppColors.primaryColor,
    );
  }
}