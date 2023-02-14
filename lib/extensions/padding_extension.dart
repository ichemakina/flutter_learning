import 'package:flutter/material.dart';

extension PaddingExtension on Widget{
  Widget padding(EdgeInsets edgeInsets) {
    return Padding(
      padding: edgeInsets,
      child: this,
    );
  }
}