
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, robot-controllers-msgs, catkin, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-robot-controllers-interface";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/kinetic/robot_controllers_interface/0.5.2-0.tar.gz;
    sha256 = "37bdc1b3cf7957f4c7bd78d10167a51c8f44d887500e4a0936ccb1e7dae18d7e";
  };

  buildInputs = [ robot-controllers-msgs roscpp pluginlib actionlib ];
  propagatedBuildInputs = [ robot-controllers-msgs roscpp pluginlib actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic framework for robot controls.'';
    #license = lib.licenses.BSD;
  };
}
