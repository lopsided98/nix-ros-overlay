
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, angles, catkin, geometry-msgs, message-generation, message-runtime, rosconsole, roscpp, std-msgs, turtlesim }:
buildRosPackage {
  pname = "ros-noetic-turtle-actionlib";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/noetic/turtle_actionlib/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "277d52eec8e3732c1a482911d3648ed4737bf1ef81beffc2658ae43e46d4d50d";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs angles geometry-msgs message-runtime rosconsole roscpp std-msgs turtlesim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtle_actionlib demonstrates how to write an action server and client with the turtlesim. The shape_server provides and action interface for drawing regular polygons with the turtlesim.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
