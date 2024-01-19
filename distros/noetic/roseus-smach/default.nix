
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-tutorials, catkin, euslisp, message-generation, message-runtime, roseus, rostest, smach, smach-msgs, smach-ros, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-roseus-smach";
  version = "1.7.5-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/noetic/roseus_smach/1.7.5-2.tar.gz";
    name = "1.7.5-2.tar.gz";
    sha256 = "3653ba3552f0c9ed994fe7615e914131a9c3d7d586b8c8a1cef7dea81df42ddc";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-tutorials euslisp message-runtime roseus rostest smach smach-msgs smach-ros std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roseus_smach

     * Euslisp state machine class. it will be moved.
     * Message publisher for visualizing current state by smach_viewer.
     * Simple pickle dump script for debugging state machine.
     * Execute state machine as a action server.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
