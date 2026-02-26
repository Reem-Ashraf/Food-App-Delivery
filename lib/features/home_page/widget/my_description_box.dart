import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(30.w),
      //round border
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(20.r),
      ),
    
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
    
            children: [
              Text(
                "Delivery Fee",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 51.sp, // 14 * 3.636 ≈ 51
                ),
              ),
              Text(
                "\$12.00",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 58.sp, // 16 * 3.636 ≈ 58
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
    
            children: [
              Text(
                "Delivery Time",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 51.sp, // 14 * 3.636 ≈ 51
                ),
              ),
              Text(
                "15-20 min",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 58.sp, // 16 * 3.636 ≈ 58
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
