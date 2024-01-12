
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, moveit-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-manipulation-msgs";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_manipulation_msgs/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "5dbba6a710696cc601c7a1e10cfcaaad7e1d1dc2f47a52222206d1198c7b2e47";
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
