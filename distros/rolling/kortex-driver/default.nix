
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, kortex-api, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-kortex-driver";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/rolling/kortex_driver/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "b86de176fce7a28cdf91cee04607846742bfb65bcb807460ad9d641a8a1e0441";
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
