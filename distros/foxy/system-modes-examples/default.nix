
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, rclcpp-lifecycle, system-modes }:
buildRosPackage {
  pname = "ros-foxy-system-modes-examples";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/foxy/system_modes_examples/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "2d6a22e7700346923b22021d6295bbeb5be28e9400c98d9e417e48de9023514d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost rclcpp rclcpp-lifecycle system-modes ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Simple example system for system_modes package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
