
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, sensor-msgs, udev }:
buildRosPackage {
  pname = "ros-lyrical-ld08-driver";
  version = "1.1.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ld08_driver-release/archive/release/lyrical/ld08_driver/1.1.4-3.tar.gz";
    name = "1.1.4-3.tar.gz";
    sha256 = "54a314dfaaed43428e35a0c6c15c40825e8bf9753b2ba75007a5f8c8d4668bb5";
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
