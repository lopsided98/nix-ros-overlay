
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, sensor-msgs, udev }:
buildRosPackage {
  pname = "ros-rolling-ld08-driver";
  version = "1.1.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ld08_driver-release/archive/release/rolling/ld08_driver/1.1.4-2.tar.gz";
    name = "1.1.4-2.tar.gz";
    sha256 = "20ca5642f88fa79af780f8d776f8f861d7fee6c2fd967216fc5787411797b3fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost rclcpp sensor-msgs udev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS package for LDS-02(LD08) Lidar.
    The Lidar sensor sends data to the Host controller for the Simultaneous Localization And Mapping(SLAM).";
    license = with lib.licenses; [ asl20 ];
  };
}
