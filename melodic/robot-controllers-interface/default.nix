
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, robot-controllers-msgs, catkin, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-robot-controllers-interface";
  version = "0.6.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/melodic/robot_controllers_interface/0.6.0-0.tar.gz;
    sha256 = "e32be3bf72bffa92847724a0d2ca5fa70a636b9a80b836a28d6ccf244888c8a3";
  };

  propagatedBuildInputs = [ robot-controllers-msgs roscpp pluginlib actionlib ];
  nativeBuildInputs = [ pluginlib actionlib robot-controllers-msgs catkin roscpp ];

  meta = {
    description = ''Generic framework for robot controls.'';
    #license = lib.licenses.BSD;
  };
}
