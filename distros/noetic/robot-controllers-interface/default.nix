
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, pluginlib, robot-controllers-msgs, roscpp }:
buildRosPackage {
  pname = "ros-noetic-robot-controllers-interface";
  version = "0.7.1-r4";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/noetic/robot_controllers_interface/0.7.1-4.tar.gz";
    name = "0.7.1-4.tar.gz";
    sha256 = "e0a5c23f3bfb46bfb6dd33827b9d35d294dc974f29d61ee5ffbcf57dd88ee3fc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib pluginlib robot-controllers-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Generic framework for robot controls.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
