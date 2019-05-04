
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, actionlib }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-msgs";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_msgs/0.1.4-0.tar.gz;
    sha256 = "d2636f769fc14f2c386788ba52b55a71857757442c53ef31d8eeba4cf70b8952";
  };

  buildInputs = [ message-generation actionlib-msgs actionlib ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
