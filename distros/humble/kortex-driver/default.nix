
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, kortex-api, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-humble-kortex-driver";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/humble/kortex_driver/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "789bcb19f13e9f90e0bcc59a47f8e676296e8bf50fd398ca865cc43f6170704e";
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
