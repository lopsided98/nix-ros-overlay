
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-tutorials, catkin, euslisp, message-generation, message-runtime, roseus, rostest, smach, smach-msgs, smach-ros, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-roseus-smach";
  version = "1.7.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/melodic/roseus_smach/1.7.4-1.tar.gz";
    name = "1.7.4-1.tar.gz";
    sha256 = "d174a427c36c766fcc47ceb18a95cc3dda75a74b04550a7b7d2b8de78af3edde";
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
