
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, diagnostic-msgs, diagnostic-updater, message-generation, message-runtime, roscpp, roslib, rospy, vlc }:
buildRosPackage {
  pname = "ros-noetic-cob-mimic";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_mimic/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "61f2769ffe8a440fee4e8122c5077666fc8d61ce38adc681f5208496a3beb718";
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
