
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, kortex-api, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-humble-kortex-driver";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/humble/kortex_driver/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "c3dfe586c7fb00f338fc8c657b1103bcff64ef7ee024fd83db517558e1b8f215";
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
