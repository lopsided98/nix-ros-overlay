
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-combined-robot-hw";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/combined_robot_hw/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "3acfb67a5e3769131341851192a646c666106c763709696fe1cc693fa7f77c43";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hardware-interface pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Combined Robot HW class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
