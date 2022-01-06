import 'package:flutter/material.dart';
import 'package:funny_circular_indicator/funny_circular_indicator_painter.dart';

class FunnyCircularIndicator extends StatefulWidget {
  const FunnyCircularIndicator({Key? key}) : super(key: key);

  @override
  _FunnyCircularIndicatorState createState() => _FunnyCircularIndicatorState();
}

class _FunnyCircularIndicatorState extends State<FunnyCircularIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  void initAnimationResources() {
    _animationController = AnimationController(
        vsync: this,
        lowerBound: 0,
        upperBound: 360,
        duration: const Duration(milliseconds: 1000));

    _animation =
        CurveTween(curve: Curves.slowMiddle).animate(_animationController);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    initAnimationResources();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.repeat(min: 0.0, max: 360);
    return Container(
      width: 500,
      height: 500,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return CustomPaint(
              painter: FunnyCircularIndicatorPainter(
                  currentOffsetDegree: _animationController.value));
        },
      ),
    );
  }
}
