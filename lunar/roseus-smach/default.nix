
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, catkin, smach-ros, rostest, smach-msgs, message-generation, message-runtime, actionlib, std-msgs, smach, actionlib-tutorials, euslisp }:
buildRosPackage {
  pname = "ros-lunar-roseus-smach";
  version = "1.7.4";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_roseus-release/archive/release/lunar/roseus_smach/1.7.4-0.tar.gz;
    sha256 = "d56322bd319438d2411725fc300f973ab15227a052ad17b4d89ba28db5658472";
  };

  buildInputs = [ roseus smach-ros rostest message-generation smach-msgs actionlib std-msgs smach actionlib-tutorials ];
  propagatedBuildInputs = [ roseus smach-ros rostest smach-msgs message-runtime actionlib std-msgs smach actionlib-tutorials euslisp ];
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
