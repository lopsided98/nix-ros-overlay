
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlesim, rosconsole, actionlib-msgs, catkin, message-generation, message-runtime, actionlib, std-msgs, angles, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtle-actionlib";
  version = "0.1.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/melodic/turtle_actionlib/0.1.11-0.tar.gz";
    name = "0.1.11-0.tar.gz";
    sha256 = "692d2a6946d45017346aa4165b4331314b1fde5f0067717ce33bf7ebbce1bc94";
  };

  buildType = "catkin";
  buildInputs = [ turtlesim rosconsole actionlib-msgs message-generation actionlib std-msgs angles roscpp geometry-msgs ];
  propagatedBuildInputs = [ turtlesim rosconsole actionlib-msgs message-runtime actionlib std-msgs angles roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtle_actionlib demonstrates how to write an action server and client with the turtlesim. The shape_server provides and action interface for drawing regular polygons with the turtlesim.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
