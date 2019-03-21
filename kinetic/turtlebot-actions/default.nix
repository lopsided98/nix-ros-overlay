
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot-bringup, cmake-modules, actionlib-msgs, image-transport, cv-bridge, catkin, roscpp, image-geometry, message-generation, message-runtime, actionlib, tf, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-actions";
  version = "2.3.7";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_actions/2.3.7-0.tar.gz;
    sha256 = "21c14463f4401f75e2bf220cac6211a6de31808dc0d235cfbf07995ea42b951f";
  };

  propagatedBuildInputs = [ turtlebot-bringup actionlib-msgs image-transport cv-bridge roscpp image-geometry message-runtime actionlib tf geometry-msgs eigen ];
  nativeBuildInputs = [ cmake-modules actionlib-msgs image-transport cv-bridge catkin roscpp image-geometry message-generation actionlib tf geometry-msgs eigen ];

  meta = {
    description = ''turtlebot_actions provides several basic actionlib actions for the TurtleBot.'';
    #license = lib.licenses.BSD;
  };
}
