// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/widgets.dart';
import 'package:melody/ui/theme/theme.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard(
      {this.height,
      this.width,
      this.color,
      this.child,
      this.decoration,
      this.border,
      this.radius = 12,
      this.shadow = true,
      this.margin,
      this.padding});

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final Color? color;
  final double radius;
  final BoxDecoration? decoration;
  final bool shadow;
  final Border? border;

  @override
  Widget build(BuildContext context) => Container(
        margin: margin,
        padding: padding,
        height: height,
        width: width,
        decoration: decoration ??
            BoxDecoration(
                color: color ?? AppColors.containerColor(context),
                borderRadius: BorderRadius.circular(radius),
                border: border ?? Border.all(color: const Color(0xFFEBECED)),
                boxShadow: shadow
                    ? const [
                        BoxShadow(
                          color: Color(0x1a000000),
                          offset: Offset(0, 4),
                          blurRadius: 30.0,
                          spreadRadius: 2.0,
                        ),
                      ]
                    : null),
        child: child,
      );
}
