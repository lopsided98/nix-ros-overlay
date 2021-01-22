
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-tutorials, catkin, euslisp, message-generation, message-runtime, roseus, rostest, smach, smach-msgs, smach-ros, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-roseus-smach";
  version = "1.7.4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus_smach/1.7.4-0.tar.gz";
    name = "1.7.4-0.tar.gz";
    sha256 = "ad4ebbfe69c99fea50f7c5153ed33479ad99eb528224f91d3677b8f428ed0de5";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
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
