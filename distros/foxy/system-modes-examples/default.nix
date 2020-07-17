
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, rclcpp-lifecycle, system-modes }:
buildRosPackage {
  pname = "ros-foxy-system-modes-examples";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/foxy/system_modes_examples/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "dcf3193e9aa441a03471fd578a30beb92fa3409ff92fd0c6487cdb9f5bfdc137";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost rclcpp rclcpp-lifecycle system-modes ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Simple example system for system_modes package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
