
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-move-base-msgs";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_msgs-release/archive/release/noetic/move_base_msgs/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "f7778f0c15c1e93642f7f3b52abb03a9072bece78530660576a93bc2a354671c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Holds the action description and relevant messages for the move_base package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
