import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Shimmer.fromColors(
        // The baseColor and highlightColor creates a LinearGradient which would be painted over the child widget
        baseColor: Colors.white.withOpacity(0.6),
        highlightColor: Colors.grey.withOpacity(0.2),

        child: Container(
          width: size.width,
          height: size.height,
          color: Colors.white,
        ),
      ),
    );
  }
}
