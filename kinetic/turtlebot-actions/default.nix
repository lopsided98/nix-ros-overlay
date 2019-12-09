
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, actionlib, tf, cmake-modules, catkin, image-transport, eigen, cv-bridge, actionlib-msgs, roscpp, message-runtime, turtlebot-bringup, image-geometry }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-actions";
  version = "2.3.7";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_actions/2.3.7-0.tar.gz";
    name = "2.3.7-0.tar.gz";
    sha256 = "21c14463f4401f75e2bf220cac6211a6de31808dc0d235cfbf07995ea42b951f";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs actionlib tf cmake-modules image-transport eigen cv-bridge actionlib-msgs roscpp message-generation image-geometry ];
  propagatedBuildInputs = [ geometry-msgs tf actionlib image-transport eigen cv-bridge actionlib-msgs roscpp message-runtime turtlebot-bringup image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlebot_actions provides several basic actionlib actions for the TurtleBot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
