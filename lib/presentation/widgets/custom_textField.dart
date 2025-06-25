import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';


class CustTextField extends StatelessWidget {
  const CustTextField({
    super.key,
    this.validator,
    this.hinText,
    this.prefixIcon,
    this.onChanged,
    this.keyboardType,
    this.inputFormatters,
    this.controller,
    this.maxLength,
    this.autovalidateMode,
    this.focusNode,
    this.onFieldSubmitted,
    this.onSaved,
    this.onTap,
    this.enabled,
    this.initialValue,
    this.fillColor = Colors.white,
    this.labeltext,
    this.contentPadding,
    this.suffixIcon,
    this.prefixText,
    this.obsecuretext,
    this.textCapitalization,
    this.hintTextColor,
    this.textStyle,
    this.errorStyle,
    this.minLines,
    this.maxLines,
    this.maxHeight,
    this.textInputAction,this.prefix
  });
  final String? Function(String?)? validator;
  final String? hinText;
  final Widget? prefixIcon;
  final Widget? prefix;

  final String? labeltext;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final int? maxLength;
  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  final Function(String?)? onSaved;
  final Function()? onTap;
  final bool? enabled;
  final String? initialValue;
  final Color? fillColor;
  final EdgeInsets? contentPadding;
  final Widget? suffixIcon;
  final String? prefixText;
  final bool? obsecuretext;
  final TextCapitalization? textCapitalization;
  final Color? hintTextColor;
  final TextStyle? textStyle;
  final TextStyle? errorStyle;
  final int? minLines;
  final int? maxLines;
  final double? maxHeight;
  final TextInputAction? textInputAction;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,

      maxLength: maxLength,
      initialValue: initialValue,
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      enabled: enabled,

      style: textStyle ?? baseTestStyle.s14,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      onTap: onTap,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      inputFormatters: inputFormatters,
      validator: validator,
      focusNode: focusNode,
      textInputAction: textInputAction,
      onChanged: onChanged,
      obscureText: obsecuretext ?? false,
      keyboardType: keyboardType,
      autovalidateMode: autovalidateMode ?? AutovalidateMode.onUserInteraction,
      minLines: minLines ?? 1,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
          fillColor: Color(0xffF3F3F3),prefixIconConstraints: BoxConstraints(maxHeight: 30,maxWidth: 30),
          prefixText: prefixText,
          hintStyle:hintTextColor==null? baseTestStyle.s12.w400.secondary:baseTestStyle.s14.w400.secondary,
          // prefixStyle:
          //     AppStyle.text14f500.copyWith(fontWeight: FontWeight.w600),
          disabledBorder: TextInputDecoration.disabled,
          focusedBorder: TextInputDecoration.focused,
          enabledBorder: TextInputDecoration.focused,
          errorBorder: TextInputDecoration.focused,
          prefixIcon: prefixIcon,prefix: prefix,
          counterStyle: baseTestStyle.s16.black,
          suffixIcon: suffixIcon,
          labelText: labeltext,
          filled: true,
          errorStyle: errorStyle ??
              TextStyle(
                height: 0.4,
                fontSize: 12,
                color: Colors.red,
              ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          constraints:
              BoxConstraints(maxHeight: maxHeight ?? 90, minHeight: 56),
          isDense: true,
          counterText: "",
          hintText: hinText,
          border: InputBorder.none),
    );
  }
}



class TextInputDecoration {
  static var decoration =
      InputDecoration(constraints: BoxConstraints(maxHeight: 60));

  static InputBorder outlineBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xffA8A8A9),width: 1));

  static InputBorder disabled = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xffA8A8A9),width: 1));

  static InputBorder enabled = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xffA8A8A9),width: 1));

  static InputBorder focused =OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xffA8A8A9),width: 1));
}
