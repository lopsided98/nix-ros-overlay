
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, move-base-msgs, nav-msgs, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-move-base-sequence";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/MarkNaeem/move_base_sequence-release/archive/release/noetic/move_base_sequence/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "b3dc4489b880f87708249280f6b9eb3b5fb7b6b827563cec478326fad010a6ad";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime move-base-msgs nav-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_base_sequence package'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
