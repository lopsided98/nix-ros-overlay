
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, angles, catkin, control-msgs, geometry-msgs, kdl-parser, nav-msgs, orocos-kdl, pluginlib, robot-controllers-interface, roscpp, sensor-msgs, std-msgs, tf, tf-conversions, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-noetic-robot-controllers";
  version = "0.7.1-r4";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/noetic/robot_controllers/0.7.1-4.tar.gz";
    name = "0.7.1-4.tar.gz";
    sha256 = "36877685e046139d2fb7b49d1bad2b06fd7c5966a57fcf122e8fceab3e064d53";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs control-msgs geometry-msgs kdl-parser nav-msgs orocos-kdl pluginlib robot-controllers-interface roscpp sensor-msgs std-msgs tf tf-conversions trajectory-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Some basic robot controllers for use with robot_controllers_interface.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
