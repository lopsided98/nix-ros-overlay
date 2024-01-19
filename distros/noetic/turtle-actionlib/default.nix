
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, angles, catkin, geometry-msgs, message-generation, message-runtime, rosconsole, roscpp, std-msgs, turtlesim }:
buildRosPackage {
  pname = "ros-noetic-turtle-actionlib";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/noetic/turtle_actionlib/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "80636aed6293e6c3fc13678ebf58bce00b1b8f2f7f067d9252e2e1f227bb4781";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs angles geometry-msgs message-runtime rosconsole roscpp std-msgs turtlesim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtle_actionlib demonstrates how to write an action server and client with the turtlesim. The shape_server provides and action interface for drawing regular polygons with the turtlesim.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
