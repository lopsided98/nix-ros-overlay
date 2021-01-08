
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, angles, catkin, geometry-msgs, message-generation, message-runtime, rosconsole, roscpp, std-msgs, turtlesim }:
buildRosPackage {
  pname = "ros-kinetic-turtle-actionlib";
  version = "0.1.10";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/kinetic/turtle_actionlib/0.1.10-0.tar.gz";
    name = "0.1.10-0.tar.gz";
    sha256 = "5ec375f3e1c2041fe01e5aede68707d17aa23c97c8e0648469be7f25b2c7c953";
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
