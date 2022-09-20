
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, diagnostic-msgs, diagnostic-updater, message-generation, message-runtime, roscpp, roslib, rospy, vlc }:
buildRosPackage {
  pname = "ros-noetic-cob-mimic";
  version = "0.7.13-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_mimic/0.7.13-1.tar.gz";
    name = "0.7.13-1.tar.gz";
    sha256 = "e8d0b81c7dc31fa57ab72d20265e0c69a5ae00780e25513dacfd93c0057fe690";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost diagnostic-msgs diagnostic-updater message-runtime roscpp roslib rospy vlc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements the Care-O-bot mimic'';
    license = with lib.licenses; [ asl20 ];
  };
}
