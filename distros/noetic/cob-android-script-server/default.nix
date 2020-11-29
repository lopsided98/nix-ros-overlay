
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-android-msgs, cob-script-server, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-android-script-server";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/noetic/cob_android_script_server/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "fbf35a4d1434bb8b22c0a001bc9f5ae6dd88fdceaf12b665e6be3a9a611a7bb5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-android-msgs cob-script-server rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''cob_android_script_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
