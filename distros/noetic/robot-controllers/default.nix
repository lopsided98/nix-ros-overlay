
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, angles, catkin, control-msgs, geometry-msgs, kdl-parser, nav-msgs, orocos-kdl, pluginlib, robot-controllers-interface, roscpp, sensor-msgs, std-msgs, tf, tf-conversions, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-noetic-robot-controllers";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/noetic/robot_controllers/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "cd13b537617dbdb7619f16bb991be69f9106df73970c9429dede5db6430ce1ae";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs control-msgs geometry-msgs kdl-parser nav-msgs orocos-kdl pluginlib robot-controllers-interface roscpp sensor-msgs std-msgs tf tf-conversions trajectory-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some basic robot controllers for use with robot_controllers_interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
