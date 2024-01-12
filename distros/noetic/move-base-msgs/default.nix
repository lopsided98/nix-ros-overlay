
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-move-base-msgs";
  version = "1.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_msgs-release/archive/release/noetic/move_base_msgs/1.14.1-1.tar.gz";
    name = "1.14.1-1.tar.gz";
    sha256 = "a3cfcbeed9a83959c3a7b12abf8737062bee94c627d1a961be4ff589a4c4ad7a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Holds the action description and relevant messages for the move_base package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
