import 'package:flutter/material.dart';

class GrubNavText extends StatefulWidget {
  final String value;
  final Function() onChanged;
  final String? label;
  final Color? valuefontcolor;
  final IconData valueIcon;
  final double? fsvalue;

  const GrubNavText(
      {Key? key,
      required this.value,
      required this.onChanged,
      this.label,
      this.valuefontcolor,
      required this.valueIcon,
      this.fsvalue})
      : super(key: key);

  @override
  State<GrubNavText> createState() => _GrubNavTextState();
}

class _GrubNavTextState extends State<GrubNavText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        children: [
          const SizedBox(
            width: 10.0,
          ),
          Text(
            widget.value,
            style: TextStyle(
              fontSize: widget.fsvalue ?? 20,
              fontWeight: FontWeight.bold,
              color: widget.valuefontcolor ?? Colors.white,
            ),
          ),
          Spacer(),
          Icon(
            widget.valueIcon,
            size: 24.0,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10.0,
          ),
        ],
      ),
    );
  }
}
