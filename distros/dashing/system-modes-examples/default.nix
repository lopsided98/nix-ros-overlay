
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, rclcpp-lifecycle, system-modes }:
buildRosPackage {
  pname = "ros-dashing-system-modes-examples";
  version = "0.2.1-r7";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/dashing/system_modes_examples/0.2.1-7.tar.gz";
    name = "0.2.1-7.tar.gz";
    sha256 = "b90d7cf3c6c1a52e25c3d5b4acb6d0f1e8d3e794c0531885b2a928afb8fd2b72";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost rclcpp rclcpp-lifecycle system-modes ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Simple example system for system_modes package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
