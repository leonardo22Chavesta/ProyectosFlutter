import 'package:flutter/material.dart';

class BottonsWidgets extends StatelessWidget {

  final String title ;
  final double? fontSize;
  final Color colorTitle;
  final Color backgroundColor;
  final Function()? onPressed ;

  const BottonsWidgets({
      super.key,
      this.title = '',
      this.fontSize,
      required this.colorTitle,
      required this.backgroundColor,
      required this.onPressed
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:  onPressed,
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(backgroundColor)),
        child:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(title, style: TextStyle(color: colorTitle, fontSize: fontSize)),
        ));
  }
}
