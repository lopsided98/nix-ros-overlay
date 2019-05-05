
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlesim, rosconsole, actionlib-msgs, catkin, message-generation, message-runtime, actionlib, std-msgs, angles, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-turtle-actionlib";
  version = "0.1.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_tutorials-release/archive/release/lunar/turtle_actionlib/0.1.10-0.tar.gz;
    sha256 = "0a616f9b31841011a0aa1300b9a2982f7f65350092284ec05d67442eb1836230";
  };

  buildInputs = [ turtlesim rosconsole actionlib-msgs message-generation actionlib std-msgs angles roscpp geometry-msgs ];
  propagatedBuildInputs = [ turtlesim rosconsole actionlib-msgs message-runtime actionlib std-msgs angles roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtle_actionlib demonstrates how to write an action server and client with the turtlesim. The shape_server provides and action interface for drawing regular polygons with the turtlesim.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
