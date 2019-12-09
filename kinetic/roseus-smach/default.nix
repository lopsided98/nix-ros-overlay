
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, roseus, std-msgs, actionlib, smach, smach-msgs, euslisp, catkin, smach-ros, actionlib-tutorials, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-kinetic-roseus-smach";
  version = "1.7.4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus_smach/1.7.4-0.tar.gz";
    name = "1.7.4-0.tar.gz";
    sha256 = "ad4ebbfe69c99fea50f7c5153ed33479ad99eb528224f91d3677b8f428ed0de5";
  };

  buildType = "catkin";
  buildInputs = [ roseus std-msgs actionlib smach smach-msgs smach-ros actionlib-tutorials message-generation rostest ];
  propagatedBuildInputs = [ roseus std-msgs actionlib smach euslisp smach-msgs smach-ros actionlib-tutorials message-runtime rostest ];
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
