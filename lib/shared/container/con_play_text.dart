import 'package:flutter/material.dart';

class Container_play_text extends StatefulWidget {
  final Function() onChanged;
  final String? image;
  final String? title;
  final double? titlefz;
  final Color? titilecolor;
  final String? subtitle;

  const Container_play_text({
    Key? key,
    required this.onChanged,
    required this.image,
    required this.title,
    required this.subtitle,
    this.titlefz,
    this.titilecolor,
  }) : super(key: key);

  @override
  State<Container_play_text> createState() => _Container_play_textState();
}

class _Container_play_textState extends State<Container_play_text> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onChanged,
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  widget.image ?? "assets/image/banner/trio_kurnia.png",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
            ),
            child: const Icon(
              Icons.play_circle_outline_outlined,
              size: 80.0,
              color: Colors.white,
            ),
          ),
          Container(
            height: 70,
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title ??
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: widget.titlefz ?? 15.0,
                    color: widget.titilecolor ?? Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.subtitle ?? "Sub title",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
