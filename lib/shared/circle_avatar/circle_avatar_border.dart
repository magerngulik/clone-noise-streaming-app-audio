import 'dart:ui';

import 'package:flutter/material.dart';

class CircleAvatarWidgetBorder extends StatefulWidget {
  final Function() onChanged;
  final String? label;
  final String? image;
  final double? radius;
  final Color? gcolor1;
  final Color? gcolor2;
  final double? borderradius;
  final String? title;
  final double? titlesize;

  const CircleAvatarWidgetBorder({
    Key? key,
    required this.onChanged,
    this.label,
    required this.image,
    this.radius,
    this.gcolor1,
    this.gcolor2,
    this.borderradius,
    this.title,
    this.titlesize,
  }) : super(key: key);

  @override
  State<CircleAvatarWidgetBorder> createState() =>
      _CircleAvatarWidgetBorderState();
}

class _CircleAvatarWidgetBorderState extends State<CircleAvatarWidgetBorder> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onChanged,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    widget.gcolor1 ?? Colors.blue,
                    widget.gcolor2 ?? Colors.red,
                  ],
                )),
            child: CircleAvatar(
              radius: widget.radius ?? 50.0,
              child: CircleAvatar(
                radius: widget.borderradius ?? 45,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage(
                  widget.image!,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            widget.title ?? "no title",
            style: TextStyle(
              fontSize: widget.titlesize ?? 15.0,
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}
