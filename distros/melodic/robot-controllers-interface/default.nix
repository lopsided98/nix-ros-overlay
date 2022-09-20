
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, pluginlib, robot-controllers-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-robot-controllers-interface";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/melodic/robot_controllers_interface/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "e32be3bf72bffa92847724a0d2ca5fa70a636b9a80b836a28d6ccf244888c8a3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib pluginlib robot-controllers-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic framework for robot controls.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
