import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final String varient;

  const StyledButton(
      {super.key,
      required this.child,
      required this.onPressed,
      this.varient = 'default'});

  @override
  Widget build(BuildContext context) {
    Map<String, Map<String, dynamic>> variantMap = {
      'default': {
        'bg': Colors.black87,
        'textColor': Colors.white,
        'border': BorderSide(color: Colors.transparent, width: 2),
      },
      'destructive': {
        'bg': Colors.red[700],
        'textColor': Colors.white,
        'border': BorderSide(color: Colors.red[400]!, width: 2),
      },
      'outline': {
        'bg': Colors.transparent,
        'textColor': Colors.black87,
        'border': BorderSide(color: Colors.black87, width: 1),
      },
      'ghost': {
        'bg': Colors.transparent,
        'textColor': Colors.black87,
        'border': BorderSide(color: Colors.transparent, width: 2),
      },
    };
    if (child is Text) {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: variantMap[varient]!['bg'],
          shadowColor: Colors.transparent,
          elevation: 0,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          side: variantMap[varient]!['border'],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: DefaultTextStyle.merge(
          style: TextStyle(color: variantMap[varient]!['textColor']),
          child: child,
        ),
      );
    } else {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: variantMap[varient]!['bg'],
          shadowColor: Colors.transparent,
          elevation: 0,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          side: variantMap[varient]!['border'],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: child,
      );
    }
  }
}
