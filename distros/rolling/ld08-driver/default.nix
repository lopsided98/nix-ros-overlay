
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, sensor-msgs, udev }:
buildRosPackage {
  pname = "ros-rolling-ld08-driver";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ld08_driver-release/archive/release/rolling/ld08_driver/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "80b78ca7de7e958a9372edd560c78fb7f6a9e073a3da54f82b72aa85cba6e468";
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
