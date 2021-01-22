
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-msgs";
  version = "0.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_msgs/0.1.9-1.tar.gz";
    name = "0.1.9-1.tar.gz";
    sha256 = "458e4d53acaad655b6850b6a39d69cac6eb6c3429fd99a0a2a6f11b3a4f0e719";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
