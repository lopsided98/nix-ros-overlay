
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-combined-robot-hw";
  version = "0.15.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/combined_robot_hw/0.15.1-0.tar.gz";
    name = "0.15.1-0.tar.gz";
    sha256 = "aa5ba158529df1e934c5e0589dfd2c7f8af8f51820c86eb806494cc1613e0d01";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface pluginlib roscpp ];
  propagatedBuildInputs = [ hardware-interface pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Combined Robot HW class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
