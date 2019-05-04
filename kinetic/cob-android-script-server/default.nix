
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-script-server, catkin, cob-android-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-script-server";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_script_server/0.1.4-0.tar.gz;
    sha256 = "7859011eba588b274ef7ed809be58c8aa18741f20d1b7c41c0b4cc85efb8603f";
  };

  propagatedBuildInputs = [ cob-script-server cob-android-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_script_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
