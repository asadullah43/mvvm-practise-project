import 'package:flutter/material.dart';
import 'package:mvvm_practise/res/colors.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPressed;
  const RoundButton(
      {Key? key,
      required this.title,
      this.loading = false,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 40,
        width: 200,
        child: Center(
            child: loading
                ? const CircleAvatar()
                : Text(title,
                    style: const TextStyle(color: AppColor.whiteColor))),
      ),
    );
  }
}
