
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, catkin, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-lunar-combined-robot-hw";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/lunar/combined_robot_hw/0.13.3-0.tar.gz;
    sha256 = "ddc7a4b1cf73f8bb046b488bb6f7f5e5ff918224a76b20fa7a2acd76c38e4c72";
  };

  buildInputs = [ hardware-interface roscpp pluginlib ];
  propagatedBuildInputs = [ hardware-interface roscpp pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Combined Robot HW class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
