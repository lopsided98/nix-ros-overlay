
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, alsaOss, catkin, cob-srvs, diagnostic-msgs, message-generation, message-runtime, roscpp, rospy, std-msgs, std-srvs, visualization-msgs, vlc }:
buildRosPackage {
  pname = "ros-noetic-cob-sound";
  version = "0.7.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_sound/0.7.14-1.tar.gz";
    name = "0.7.14-1.tar.gz";
    sha256 = "0092e727c1de838ab9fd4ebef5776cc6e3f0b9a07e083e3416868ab978cff60a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs alsaOss cob-srvs diagnostic-msgs message-runtime roscpp rospy std-msgs std-srvs visualization-msgs vlc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements a sound play module using text2wave and aplay through python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
