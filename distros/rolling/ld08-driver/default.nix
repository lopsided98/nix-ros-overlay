
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, sensor-msgs, udev }:
buildRosPackage {
  pname = "ros-rolling-ld08-driver";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ld08_driver-release/archive/release/rolling/ld08_driver/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "48024541c847142f4cb0d0e81632d8a4aaa67ec0a6c4795d6de06f40f20ebb79";
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
