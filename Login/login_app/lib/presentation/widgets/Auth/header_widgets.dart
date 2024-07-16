import 'package:flutter/material.dart';

class HeaderWidgets extends StatelessWidget {
  
  final Column columnChildres;

  const HeaderWidgets({
    super.key,
    required this.columnChildres
    });

  @override
  Widget build(BuildContext context) {

    return  Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 36.0, horizontal: 24.0),
        child: columnChildres ,
      ),
    );
  }
}
