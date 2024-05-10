
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, alsaOss, catkin, cob-srvs, diagnostic-msgs, message-generation, message-runtime, roscpp, rospy, std-msgs, std-srvs, visualization-msgs, vlc }:
buildRosPackage {
  pname = "ros-noetic-cob-sound";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_sound/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "841e3e507e87508cc47d6c0fcf5cb7f634ae93058fd5a35b37a0ef5c5f6856cc";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs alsaOss cob-srvs diagnostic-msgs message-runtime roscpp rospy std-msgs std-srvs visualization-msgs vlc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package implements a sound play module using text2wave and aplay through python.";
    license = with lib.licenses; [ asl20 ];
  };
}
