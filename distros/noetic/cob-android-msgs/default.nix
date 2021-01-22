
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-cob-android-msgs";
  version = "0.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/noetic/cob_android_msgs/0.1.9-1.tar.gz";
    name = "0.1.9-1.tar.gz";
    sha256 = "3d6a2621ee90143c6097bd4df0eda5d07bf6c0c0965ed112b62044044a20b6e0";
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
