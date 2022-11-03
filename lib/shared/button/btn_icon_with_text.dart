import 'package:flutter/material.dart';

class BtnIconWithText extends StatelessWidget {
  BtnIconWithText({
    required this.iconbtn,
    required this.title,
    this.iconfs,
    Key? key,
  }) : super(key: key);
  IconData? iconbtn;
  String? title;
  double? iconfs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Icon(
            iconbtn,
            size: iconfs ?? 34.0,
            color: Colors.white,
          ),
          const SizedBox(
            height: 5.0,
          ),
          SizedBox(
            width: 80,
            child: Text(
              title ?? "No title",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
