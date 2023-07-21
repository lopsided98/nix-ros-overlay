
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, kortex-api, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-iron-kortex-driver";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/iron/kortex_driver/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "d919a85f250eead1646ae5af8b08d6afb8ae8e9901006ba6f0b173d99652953d";
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
