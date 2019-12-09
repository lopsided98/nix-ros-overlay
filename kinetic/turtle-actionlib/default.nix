
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, turtlesim, geometry-msgs, std-msgs, actionlib, catkin, actionlib-msgs, roscpp, angles, message-runtime, rosconsole }:
buildRosPackage {
  pname = "ros-kinetic-turtle-actionlib";
  version = "0.1.10";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/kinetic/turtle_actionlib/0.1.10-0.tar.gz";
    name = "0.1.10-0.tar.gz";
    sha256 = "5ec375f3e1c2041fe01e5aede68707d17aa23c97c8e0648469be7f25b2c7c953";
  };

  buildType = "catkin";
  buildInputs = [ turtlesim geometry-msgs std-msgs actionlib actionlib-msgs roscpp angles message-generation rosconsole ];
  propagatedBuildInputs = [ turtlesim geometry-msgs std-msgs actionlib actionlib-msgs roscpp angles message-runtime rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtle_actionlib demonstrates how to write an action server and client with the turtlesim. The shape_server provides and action interface for drawing regular polygons with the turtlesim.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
