
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, moveit-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-manipulation-msgs";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_manipulation_msgs/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "abacddc3016ee4a538ffcb6f6e86a13cd6937428f6aed1fa8c3eaa676b1869b2";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for cob_manipulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
