import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class IncrementerButton extends StatelessWidget{
  final void Function() onPressed;
  final int incrementValue;
  const IncrementerButton({super.key,required this.onPressed,required this.incrementValue});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffe3612d),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      child: Text(
        "Add $incrementValue Point",
        style: const TextStyle(
          color:  Colors.black,
        ),
      ),
    );
  }
}
