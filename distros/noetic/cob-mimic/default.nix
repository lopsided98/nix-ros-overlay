
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, diagnostic-msgs, diagnostic-updater, message-generation, message-runtime, roscpp, roslib, rospy, vlc }:
buildRosPackage {
  pname = "ros-noetic-cob-mimic";
  version = "0.7.16-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_mimic/0.7.16-2.tar.gz";
    name = "0.7.16-2.tar.gz";
    sha256 = "1e961042c29a570de85b6160bb8b99e89f2b359d6fd2e9b84eee7b10f67dd20c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost diagnostic-msgs diagnostic-updater message-runtime roscpp roslib rospy vlc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package implements the Care-O-bot mimic";
    license = with lib.licenses; [ asl20 ];
  };
}
