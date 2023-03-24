import 'dart:math';

import 'package:flutter/material.dart';
import 'package:play_music/utils/app_const/barrel_const.dart';

import '../../../common/size_config.dart';

class SeekBar extends StatefulWidget {
  final Duration duration;
  final Duration position;
  final Duration bufferedPosition;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangeEnd;

  const SeekBar({
    Key? key,
    required this.duration,
    required this.position,
    required this.bufferedPosition,
    this.onChanged,
    this.onChangeEnd,
  }) : super(key: key);

  @override
  SeekBarState createState() => SeekBarState();
}

class SeekBarState extends State<SeekBar> {
  double? _dragValue;
  late SliderThemeData _sliderThemeData;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _sliderThemeData = SliderTheme.of(this.context).copyWith(
      trackHeight: 2.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Center(
            child: Container(
              height: getProportionateScreenWidth(4.5),
              decoration: BoxDecoration(
                color: COLOR_CONST.white.withOpacity(0.4),
                borderRadius: const BorderRadius.all(Radius.circular(10))
              ),
            )
          )
        ),
        SliderTheme(
          data: _sliderThemeData.copyWith(
            trackHeight: getProportionateScreenWidth(3),
            thumbColor: COLOR_CONST.white,
            inactiveTrackColor: COLOR_CONST.white.withOpacity(0.4),
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 5),
            activeTrackColor: COLOR_CONST.white,
            trackShape: CustomTrackShape(),
          ),
          child: Slider(
            min: 0.0,
            max: widget.duration.inMilliseconds.toDouble(),
            value: min(_dragValue ?? widget.position.inMilliseconds.toDouble(),
                widget.duration.inMilliseconds.toDouble()),
            onChanged: (value) {
              setState(() {
                _dragValue = value;
              });
              if (widget.onChanged != null) {
                widget.onChanged!(Duration(milliseconds: value.round()));
              }
            },
            onChangeEnd: (value) {
              if (widget.onChangeEnd != null) {
                widget.onChangeEnd!(Duration(milliseconds: value.round()));
              }
              _dragValue = null;
            },
          ),
        ),
        Positioned(
          left: 0.0,
          bottom: 0.0,
          child: Text(
            RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
                    .firstMatch("$_remaining")
                    ?.group(1) ??
                '$_remaining',
            style: FONT_CONST.bold(
              color: COLOR_CONST.white,
              fontWeight: FontWeight.w400,
              fontSize: 10
            ),
          )
        ),
        Positioned(
          right: 0.0,
          bottom: 0.0,
          child: Text(
            RegExp(
              r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
                .firstMatch("${widget.duration}")
                ?.group(1) ?? '',
            style: FONT_CONST.bold(
              color: COLOR_CONST.white,
              fontWeight: FontWeight.w400,
              fontSize: 10
            ),
          ),
        ),
      ],
    );
  }

  Duration get _remaining => widget.position;
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