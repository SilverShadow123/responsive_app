enum DeviceType{
  mobile,
  tablet,
  desktop
}


class ScreenUnits{
  static const double mobileMaxSize=640;
  static const double tabletMaxSize=1008;
  static const double desktopMaxSize=1000;

  static DeviceType getDeviceType(double width){

    if (width<ScreenUnits.mobileMaxSize){
      return DeviceType.mobile;
    }
    else if (width>=ScreenUnits.mobileMaxSize &&width<ScreenUnits.tabletMaxSize)
    {
      return DeviceType.tablet;
    }
    return DeviceType.desktop;

  }

}

