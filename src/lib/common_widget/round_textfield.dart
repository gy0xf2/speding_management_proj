import 'package:financialmng/common/color_extension.dart';
import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  const RoundTextField(
      {super.key,
      required this.label,
      this.controller,
      this.keyboardType,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 14,
                color: TColor.gray30,
                fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          width: double.maxFinite,
          height: 48,
          decoration: BoxDecoration(
              border: Border.all(
                color: TColor.gray70,
              ),
              borderRadius: BorderRadius.circular(15),
              color: TColor.gray60.withOpacity(0.05)),
          child: TextField(
            style: TextStyle(
                color: TColor.white, fontSize: 12, fontWeight: FontWeight.w500),
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText,
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none),
          ),
        )
      ],
    );
  }
}
