
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, diagnostic-msgs, diagnostic-updater, message-generation, message-runtime, roscpp, roslib, vlc }:
buildRosPackage {
  pname = "ros-melodic-cob-mimic";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_mimic/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "e86450cb27a266d0f7cd55fb6355d99e96383bf6dc7d0d4fbab48380c3feb2b1";
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
