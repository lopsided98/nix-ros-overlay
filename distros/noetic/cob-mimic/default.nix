
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, diagnostic-msgs, diagnostic-updater, message-generation, message-runtime, roscpp, roslib, rospy, vlc }:
buildRosPackage {
  pname = "ros-noetic-cob-mimic";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_mimic/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "743e4f49225e202245d42454fc70a0602268b9aae9db9ebb6790756176d0807a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost diagnostic-msgs diagnostic-updater message-runtime roscpp roslib rospy vlc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements the Care-O-bot mimic'';
    license = with lib.licenses; [ asl20 ];
  };
}
