import 'package:flutter/material.dart';
import 'package:shiva_auto_service/constants/style.dart';

class Webtext extends StatefulWidget {
  var text;
  var path;
  Webtext({
    super.key,
    required this.text,
    required this.path,
  });

  @override
  State<Webtext> createState() => _WebtextState();
}

class _WebtextState extends State<Webtext> {
  final List _isHovering = [
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        Text(
          "${widget.text}",
          style:const TextStyle(
            fontFamily: "PlayfairDisplay",
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
