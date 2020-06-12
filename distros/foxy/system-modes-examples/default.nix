
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, rclcpp-lifecycle, system-modes }:
buildRosPackage {
  pname = "ros-foxy-system-modes-examples";
  version = "0.2.0-r4";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/foxy/system_modes_examples/0.2.0-4.tar.gz";
    name = "0.2.0-4.tar.gz";
    sha256 = "5419abbbf6ebfe02fc5cd41b2fd3afb79b031e1685aaf714b14ae867d0dd52a3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost rclcpp rclcpp-lifecycle system-modes ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Simple example system for system_modes package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
