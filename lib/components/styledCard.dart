import 'package:flutter/material.dart';

class StyledCard extends Container {
  final Widget child;
  final String variant;
  StyledCard({
    Key? key,
    required this.child,
    this.variant = 'default',
    EdgeInsetsGeometry? padding,
    BorderRadiusGeometry? borderRadius,
    Color? color,
    Border? border,
    double? width,
    double? height,
  }) : super(
          key: key,
          width: width,
          height: height,
          padding: padding ?? EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: border ??
                Border.all(
                  color: variantMap[variant]!['borderColor'],
                  width: variantMap[variant]!['borderWidth'],
                ),
            borderRadius: borderRadius ?? BorderRadius.circular(10),
            color: color ?? variantMap[variant]!['bg'],
          ),
          child: child,
        );

  static final Map<String, Map<String, dynamic>> variantMap = {
    'default': {
      'bg': Colors.black87,
      'borderColor': Colors.transparent,
      'borderWidth': 2.0,
    },
    'destructive': {
      'bg': Colors.red[700],
      'borderColor': Colors.red[400]!,
      'borderWidth': 2.0,
    },
    'outline': {
      'bg': Colors.transparent,
      'borderColor': Colors.black87,
      'borderWidth': 1.0,
    },
    'custom': {
      'bg': Colors.transparent,
      'borderColor': Colors.transparent,
      'borderWidth': 2.0,
    },
  };
}
