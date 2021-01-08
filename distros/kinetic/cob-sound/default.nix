
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, alsaOss, catkin, cob-srvs, diagnostic-msgs, message-generation, message-runtime, roscpp, rospy, std-msgs, std-srvs, visualization-msgs, vlc }:
buildRosPackage {
  pname = "ros-kinetic-cob-sound";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_sound/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "69621fb0ceb3c8e1e049851a87d415e66162d53a880446a6695bd7488c827dce";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs alsaOss cob-srvs diagnostic-msgs message-runtime roscpp rospy std-msgs std-srvs visualization-msgs vlc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements a sound play module using text2wave and aplay through python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
