import 'package:flutter/material.dart';
import 'package:shiva_auto_service/constants/style.dart';

class Webtext extends StatefulWidget {
  final text;
  const Webtext({
    required this.text,
  });

  @override
  State<Webtext> createState() => _WebtextState();
}

class _WebtextState extends State<Webtext> {
  final List _isHovering = [
    false,
    false,
  ];

  int _selectindex = 0;
  bool _select = false;
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
        setState(() {
          _selectindex = 1;
          _select = true;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "${widget.text}",
            style: TextStyle(
                fontFamily: "PlayfairDisplay",
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                fontSize: 18,
                color: _isHovering[0] ? Orange :_select? Colors.white:Primary_color),
          ),
          const SizedBox(height: 5),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: _isHovering[0],
            child: Container(
              decoration: BoxDecoration(
                  color: Orange, borderRadius: BorderRadius.circular(20)),
              height: 3,
              width: 20,
            ),
          ),
        ],
      ),
    );
  }
}
