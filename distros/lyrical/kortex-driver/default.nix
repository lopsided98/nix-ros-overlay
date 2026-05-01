
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, kortex-api, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-kortex-driver";
  version = "0.2.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/lyrical/kortex_driver/0.2.5-4.tar.gz";
    name = "0.2.5-4.tar.gz";
    sha256 = "5f3a5a037f5e4c6ed9dc9d7f9169ca81732a16903bceffdb66c57685ce583a70";
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
