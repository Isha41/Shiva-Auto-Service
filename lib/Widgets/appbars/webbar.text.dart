import 'package:flutter/material.dart';
import 'package:shiva_auto_service/constants/style.dart';

class Webtext extends StatefulWidget {
  const Webtext({
    super.key,
    required this.text,
    this.route,
  });

  final String text;
  final String? route;

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
    return InkWell(
      onHover: (value) {
        setState(() {
          value ? _isHovering[0] = true : _isHovering[0] = false;
        });
      },
      hoverColor: Colors.transparent,
      onTap: () {
        Navigator.pushNamed(context, '/${widget.route}');
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.text,
            style: TextStyle(
                fontFamily: "PlayfairDisplay",
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                fontSize: 18,
                color: _isHovering[0] ? orange : primaryColor),
          ),
          const SizedBox(height: 5),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: _isHovering[0],
            child: Container(
              decoration: BoxDecoration(
                  color: orange, borderRadius: BorderRadius.circular(20)),
              height: 3,
              width: 20,
            ),
          ),
        ],
      ),
    );
  }
}
