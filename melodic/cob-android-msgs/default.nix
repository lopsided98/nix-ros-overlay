
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, actionlib, catkin, actionlib-msgs, message-generation }:
buildRosPackage {
  pname = "ros-melodic-cob-android-msgs";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/melodic/cob_android_msgs/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "506bb55d787b9cfc23d15fbf27abbe8bfa6d5c57e24b137e47e80c7dbe4287db";
  };

  buildType = "catkin";
  buildInputs = [ message-generation actionlib actionlib-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
