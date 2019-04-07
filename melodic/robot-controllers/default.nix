
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, orocos-kdl, control-msgs, actionlib-msgs, tf, trajectory-msgs, pluginlib, catkin, sensor-msgs, nav-msgs, robot-controllers-interface, urdf, std-msgs, actionlib, tf-conversions, angles, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-robot-controllers";
  version = "0.6.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/melodic/robot_controllers/0.6.0-0.tar.gz;
    sha256 = "8b8bbd122bf7977a8b16518c7eb79ad915969f5d69fed23f85100fb33f58865f";
  };

  buildInputs = [ kdl-parser pluginlib actionlib-msgs orocos-kdl control-msgs trajectory-msgs sensor-msgs roscpp nav-msgs robot-controllers-interface tf-conversions urdf actionlib std-msgs angles tf geometry-msgs ];
  propagatedBuildInputs = [ kdl-parser pluginlib actionlib-msgs orocos-kdl control-msgs trajectory-msgs sensor-msgs roscpp nav-msgs robot-controllers-interface tf-conversions urdf actionlib std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some basic robot controllers for use with robot_controllers_interface.'';
    #license = lib.licenses.BSD;
  };
}
