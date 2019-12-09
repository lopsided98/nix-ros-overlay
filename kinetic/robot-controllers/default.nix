
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, trajectory-msgs, sensor-msgs, geometry-msgs, urdf, robot-controllers-interface, pluginlib, std-msgs, tf, catkin, actionlib, kdl-parser, actionlib-msgs, roscpp, angles, tf-conversions, nav-msgs, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robot-controllers";
  version = "0.5.2";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/kinetic/robot_controllers/0.5.2-0.tar.gz";
    name = "0.5.2-0.tar.gz";
    sha256 = "64f382f72f24426bdc2192019d42a9339b4222a42fc07af2679d604303e161e4";
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
