
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, kortex-api, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-kortex-driver";
  version = "0.2.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/rolling/kortex_driver/0.2.5-2.tar.gz";
    name = "0.2.5-2.tar.gz";
    sha256 = "d582877b0c4e5a9978ff7a6b0aeb557b9aecd4ae7af49e43f7e0a55a8d64c919";
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
