import 'package:flutter/material.dart';
import 'package:login_app/presentation/widgets/Auth/body_widget.dart';
import 'package:login_app/presentation/widgets/Auth/header_widgets.dart';

class HomeWidgets extends StatelessWidget {
  
  final Column header ; 
  final List<Widget> listCampos;

  const HomeWidgets({
    super.key,
    required this.header,
    required this.listCampos
    });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors:  [
                     Color.fromARGB(255, 21, 101, 192), 
                     Color.fromARGB(255, 30, 136, 229),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight
                )),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderWidgets(columnChildres: header),
                  BodyWidget(childrens: listCampos)
                ],
              ),
        ),
    );
  }
}