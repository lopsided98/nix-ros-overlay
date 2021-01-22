
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-android-msgs, cob-script-server, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-script-server";
  version = "0.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_script_server/0.1.9-1.tar.gz";
    name = "0.1.9-1.tar.gz";
    sha256 = "6135ee5c752591b1ae9a68623832398b60aba05865b3c4fd190a3464143aba08";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-android-msgs cob-script-server rospy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''cob_android_script_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
