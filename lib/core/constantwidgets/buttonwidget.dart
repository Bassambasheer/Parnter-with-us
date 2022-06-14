import 'package:flutter/material.dart';
import 'package:node_tech/core/constantwidgets/textwidget.dart';

import '../../theme/theme.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.txt,
    required this.ontap,
  }) : super(key: key);
  final String txt;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: MaterialButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        color: blue,
        onPressed: () {
          ontap();
        },
        child: TextWidget(
          txt: txt,
          clr: white,
          size: 22,
        ),
      ),
    );
  }
}
