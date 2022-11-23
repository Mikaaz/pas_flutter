// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ShoesType extends StatelessWidget {
  final String shoesType;
  final bool isSelected;
  final VoidCallback onTap;

  ShoesType({
    required this.shoesType,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          shoesType,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.orange : Colors.white,
          ),
        ),
      ),
    );
  }
}
