import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/barrel_common.dart';
import '../../../utils/app_const/barrel_const.dart';

class CustomEditText extends StatelessWidget {
  const CustomEditText({
    required this.hint,
    required this.onTextChange,
    this.errorText,
    this.keyboardType,
    this.textController,
    this.textInit = '',
    this.obscureText = false,
  });

  final String hint;
  final Function(String) onTextChange;
  final TextInputType? keyboardType;
  final String? errorText;
  final TextEditingController? textController;
  final String textInit;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalSpacing(of: 16),
            TextField(
              controller: textController,
              autofocus: false,
              style: FONT_CONST.regular(color: COLOR_CONST.white),
              keyboardType: keyboardType ?? TextInputType.text,
              obscureText: obscureText,
              onChanged: onTextChange,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: FONT_CONST.regular(color: COLOR_CONST.white),
                counterText: '',
                contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: COLOR_CONST.white),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: COLOR_CONST.crusta),
                ),
              ),
            ),
            if (errorText != null)
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10),
                child: Text(
                  errorText ?? "",
                  style: FONT_CONST.regular(
                      color: COLOR_CONST.pomegranate, fontSize: 14),
                ),
              )
          ],
        ));
  }
}
