import 'dart:math';

import 'package:flutter/material.dart';
import 'package:play_music/utils/app_const/barrel_const.dart';

import '../../../common/size_config.dart';

class SeekBarOnlyShow extends StatefulWidget {
  final Duration duration;
  final Duration position;

  const SeekBarOnlyShow({
    Key? key,
    required this.duration,
    required this.position,
  }) : super(key: key);

  @override
  SeekBarOnlyShowState createState() => SeekBarOnlyShowState();
}

class SeekBarOnlyShowState extends State<SeekBarOnlyShow> {
  double? _dragValue;
  late SliderThemeData _sliderThemeData;

   @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _sliderThemeData = SliderTheme.of(this.context);
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: _sliderThemeData.copyWith(
        trackHeight: getProportionateScreenWidth(0.1),
        thumbShape: HiddenThumbComponentShape(),
        disabledActiveTrackColor: COLOR_CONST.amaranth,
        disabledInactiveTrackColor:  Colors.transparent,
        trackShape: CustomTrackShape(),
      ),
      child: Slider(
        min: 0.0,
        max: widget.duration.inMilliseconds.toDouble(),
        value: min(_dragValue ?? widget.position.inMilliseconds.toDouble(),
            widget.duration.inMilliseconds.toDouble()),
        onChanged: null, 
      ),
    );
  }

  Duration get _remaining => widget.duration - widget.position;
}

class HiddenThumbComponentShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) => Size.zero;

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {}
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}