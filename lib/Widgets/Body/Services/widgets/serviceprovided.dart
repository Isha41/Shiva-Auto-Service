import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shiva_auto_service/constants/style.dart';

class ServiceProvided extends StatefulWidget {
  final  text;
  const ServiceProvided({
    required this.text,
  });

  @override
  State<ServiceProvided> createState() => _ServiceProvidedState();
}

class _ServiceProvidedState extends State<ServiceProvided> {
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
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 12,
          ),
          AutoSizeText(
            "${widget.text}",
            style: TextStyle(
              fontFamily: "PlayfairDisplay",
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
                fontSize: 16,
                color: _isHovering[0] ? Orange : Primary_color),
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

