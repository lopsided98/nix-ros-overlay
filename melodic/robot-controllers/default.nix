
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, trajectory-msgs, sensor-msgs, geometry-msgs, urdf, robot-controllers-interface, pluginlib, std-msgs, tf, catkin, actionlib, kdl-parser, actionlib-msgs, roscpp, angles, tf-conversions, nav-msgs, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-robot-controllers";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/melodic/robot_controllers/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "8b8bbd122bf7977a8b16518c7eb79ad915969f5d69fed23f85100fb33f58865f";
  };

  buildType = "catkin";
  buildInputs = [ orocos-kdl sensor-msgs trajectory-msgs geometry-msgs robot-controllers-interface urdf pluginlib std-msgs actionlib tf actionlib-msgs control-msgs roscpp angles tf-conversions nav-msgs kdl-parser ];
  propagatedBuildInputs = [ orocos-kdl sensor-msgs trajectory-msgs geometry-msgs urdf robot-controllers-interface pluginlib std-msgs tf actionlib actionlib-msgs control-msgs roscpp tf-conversions nav-msgs kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some basic robot controllers for use with robot_controllers_interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
