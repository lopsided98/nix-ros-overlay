
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, diagnostic-msgs, diagnostic-updater, message-generation, message-runtime, roscpp, roslib, vlc }:
buildRosPackage {
  pname = "ros-kinetic-cob-mimic";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_mimic/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "0a1ecf486cf7755be0f7c4c9935c16bc40e517a15be2035a1698e17e063d1009";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost diagnostic-msgs diagnostic-updater message-runtime roscpp roslib vlc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements the Care-O-bot mimic'';
    license = with lib.licenses; [ asl20 ];
  };
}
