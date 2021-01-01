
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cmake-modules, cv-bridge, eigen, geometry-msgs, image-geometry, image-transport, message-generation, message-runtime, roscpp, tf, turtlebot-bringup }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-actions";
  version = "2.3.7";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_actions/2.3.7-0.tar.gz";
    name = "2.3.7-0.tar.gz";
    sha256 = "21c14463f4401f75e2bf220cac6211a6de31808dc0d235cfbf07995ea42b951f";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cv-bridge eigen geometry-msgs image-geometry image-transport message-runtime roscpp tf turtlebot-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlebot_actions provides several basic actionlib actions for the TurtleBot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
