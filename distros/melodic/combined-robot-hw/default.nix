
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-combined-robot-hw";
  version = "0.18.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/combined_robot_hw/0.18.4-1.tar.gz";
    name = "0.18.4-1.tar.gz";
    sha256 = "d09031bea3b3d2d8d5b496f3856e4ea059a585bd2be9cb2f6703750c999560ab";
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
