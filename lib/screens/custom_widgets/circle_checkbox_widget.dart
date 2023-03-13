import 'package:flutter/material.dart';

import '../../utils/barrel_utils.dart';

class CircleCheckBoxWidget extends StatefulWidget {
  final Widget? checkBoxTitle;
  final Function? checkboxChange;
  bool checkBoxDefalt;

  CircleCheckBoxWidget({
    Key? key,
    this.checkBoxTitle,
    this.checkboxChange,
    this.checkBoxDefalt = false,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CircleCheckBoxWidgetState();
}

class _CircleCheckBoxWidgetState extends State<CircleCheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.checkBoxDefalt = !widget.checkBoxDefalt;
        });
        widget.checkboxChange!(widget.checkBoxDefalt);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget.checkBoxTitle ?? Container(),
          Container(
            padding: const EdgeInsets.all(10),
            child: widget.checkBoxDefalt
                ? Container(
                    child: Icon(
                      Icons.check_circle,
                      size: 22,
                      color: COLOR_CONST.tropaz,
                    ),
                  )
                : Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                        border: Border.all(color: COLOR_CONST.tropaz, width: 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
          ),
        ],
      ),
    );
  }
}
