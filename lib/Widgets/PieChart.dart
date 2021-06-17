import 'dart:math';
import 'package:flutter/material.dart';
import 'color.dart';
import 'String.dart';

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:12.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: AppColors.neumorpShadow,
          color: AppColors.primaryWhite,
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomPaint(
                child: Container(),
                foregroundPainter: PieChartPainter(),
              ),
            ),
          Center(
            child: Container(
            height: 70,
            width: 70,
            child: Center(
              child: Text(
                '\$ 12564',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: AppColors.neumorpShadow,
              color: AppColors.primaryWhite,
            ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    double total = 0;
    double startRadian = -pi / 2;
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;
    category.forEach((f) => total += f['amount']);
    for (var i = 0; i < category.length; i++) {
      final currentCategory = category[i];
      final sweepRadian = (currentCategory['amount'] / total ) * 2  * pi;
      paint.color = AppColors.pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}



