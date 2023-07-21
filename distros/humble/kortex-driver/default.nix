
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, kortex-api, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-humble-kortex-driver";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/humble/kortex_driver/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "062448380423cee87f7af4aaba3de4c1417ab0eab8747183cd9c28803cde336d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ hardware-interface kortex-api pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 driver package for the Kinova Robot Hardware.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
