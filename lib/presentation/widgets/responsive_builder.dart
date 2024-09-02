import 'package:flutter/material.dart';
import 'package:responsive_app/presentation/widgets/screen_units.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder(
      {required this.mobile, required this.desktop, this.tablet});
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final DeviceType deviceType = ScreenUnits.getDeviceType(size.width);
    if (deviceType == DeviceType.mobile) {
      return mobile;
    } else if (deviceType == DeviceType.tablet) {
      return tablet ?? mobile;
    }
    return desktop;
  }
}