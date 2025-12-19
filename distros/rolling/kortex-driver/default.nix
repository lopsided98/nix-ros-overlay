
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, kortex-api, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-kortex-driver";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/rolling/kortex_driver/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "46e4b06d25337dfb1064f2fe498cc6c2af0126f5c7e0320a2a2dac0778d2e872";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ hardware-interface kortex-api pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 driver package for the Kinova Robot Hardware.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
