
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, sensor-msgs, udev }:
buildRosPackage {
  pname = "ros-jazzy-ld08-driver";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ld08_driver-release/archive/release/jazzy/ld08_driver/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "8d34c0a33c4260223a9ea5553d5a9bb8a1207115a15ac4cbeb56594dd59fb517";
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
