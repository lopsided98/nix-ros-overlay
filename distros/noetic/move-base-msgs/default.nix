
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-move-base-msgs";
  version = "1.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_msgs-release/archive/release/noetic/move_base_msgs/1.14.2-1.tar.gz";
    name = "1.14.2-1.tar.gz";
    sha256 = "c282593588bbf0478039092ba91e3388bc6f2e40131aa3b5706f7d72cd24e8d7";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Holds the action description and relevant messages for the move_base package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
