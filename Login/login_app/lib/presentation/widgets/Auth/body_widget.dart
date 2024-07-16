import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  final List<Widget> childrens;

  const BodyWidget({super.key, required this.childrens});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: childrens
              ),
          ),
        ));
  }
}
