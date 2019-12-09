
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, actionlib, catkin, actionlib-msgs, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-msgs";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_msgs/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "2a5881e3732befaa351249f0cbb110813d2e1e726e9bcb773ccf4e384b141071";
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
