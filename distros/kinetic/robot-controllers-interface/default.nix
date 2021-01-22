
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, pluginlib, robot-controllers-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-robot-controllers-interface";
  version = "0.5.2";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/kinetic/robot_controllers_interface/0.5.2-0.tar.gz";
    name = "0.5.2-0.tar.gz";
    sha256 = "37bdc1b3cf7957f4c7bd78d10167a51c8f44d887500e4a0936ccb1e7dae18d7e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib pluginlib robot-controllers-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic framework for robot controls.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
