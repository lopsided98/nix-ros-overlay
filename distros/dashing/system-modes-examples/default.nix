
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, boost, rclcpp, rclcpp-lifecycle, system-modes }:
buildRosPackage {
  pname = "ros-dashing-system-modes-examples";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/dashing/system_modes_examples/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "893e4b0099bb12a4a07528199f7f1d4f29892a2faf1e0a2ca1769963786ab074";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost rclcpp rclcpp-lifecycle system-modes ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Simple example system for system_modes package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
