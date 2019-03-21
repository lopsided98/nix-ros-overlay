
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, orocos-kdl, control-msgs, actionlib-msgs, tf, trajectory-msgs, pluginlib, catkin, sensor-msgs, nav-msgs, robot-controllers-interface, urdf, std-msgs, actionlib, tf-conversions, angles, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robot-controllers";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/kinetic/robot_controllers/0.5.2-0.tar.gz;
    sha256 = "64f382f72f24426bdc2192019d42a9339b4222a42fc07af2679d604303e161e4";
  };

  propagatedBuildInputs = [ kdl-parser pluginlib actionlib-msgs orocos-kdl control-msgs trajectory-msgs sensor-msgs roscpp nav-msgs robot-controllers-interface tf-conversions urdf actionlib std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ kdl-parser pluginlib actionlib-msgs orocos-kdl control-msgs trajectory-msgs sensor-msgs catkin roscpp nav-msgs robot-controllers-interface tf-conversions urdf actionlib std-msgs angles tf geometry-msgs ];

  meta = {
    description = ''Some basic robot controllers for use with robot_controllers_interface.'';
    #license = lib.licenses.BSD;
  };
}
