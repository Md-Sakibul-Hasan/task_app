import 'package:flutter/material.dart';
import 'semi_circle_meter_painter.dart';

class CircularMeterWidget extends StatelessWidget {
  final double progress;
  final String value;
  final String unit;
  final Color backgroundColor;
  final Color progressColor;
  final double width;
  final double height;
  final double strokeWidth;
  final double valueFontSize;
  final double unitFontSize;
  final Color valueColor;
  final Color unitColor;
  final FontWeight valueFontWeight;
  final FontWeight unitFontWeight;

  const CircularMeterWidget({
    super.key,
    required this.progress,
    required this.value,
    required this.unit,
    this.backgroundColor = const Color(0xFFE0F2FF),
    this.progressColor = const Color(0xFF4E91FD),
    this.width = 200,
    this.height = 200,
    this.strokeWidth = 16.0,
    this.valueFontSize = 20,
    this.unitFontSize = 14,
    this.valueColor = Colors.black,
    this.unitColor = Colors.black,
    this.valueFontWeight = FontWeight.bold,
    this.unitFontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CustomPaint(
        painter: SemiCircleMeterPainter(
          progress: progress,
          backgroundColor: backgroundColor,
          progressColor: progressColor,
          strokeWidth: strokeWidth,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  value,
                  style: TextStyle(
                    color: valueColor,
                    fontSize: valueFontSize,
                    fontWeight: valueFontWeight,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  unit,
                  style: TextStyle(
                    color: unitColor,
                    fontSize: unitFontSize,
                    fontWeight: unitFontWeight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
