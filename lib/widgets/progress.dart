import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  ValueNotifier<double> get _valueNotifier => ValueNotifier(0);
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return DashedCircularProgressBar.aspectRatio(
      aspectRatio: 1.5, // width ÷ height
      valueNotifier: _valueNotifier,
      progress: 60,
      startAngle: 225,
      sweepAngle: 270,
      foregroundColor: Colors.green,
      backgroundColor: const Color(0xffeeeeee),
      foregroundStrokeWidth: 12,
      backgroundStrokeWidth: 15,
      animation: true,
      seekSize: 6,
      seekColor: const Color(0xffeeeeee),
      child: Center(
        child: ValueListenableBuilder(
          valueListenable: _valueNotifier,
          builder: (_, double value, __) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${value.toInt()}%',
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
