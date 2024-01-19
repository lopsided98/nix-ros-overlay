
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-android-msgs, cob-script-server, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-android-script-server";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/noetic/cob_android_script_server/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "ce3448c78c5d5239a142baed1c050904d157b5f60823ddc7cc23c7ee49fd86ee";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ cob-android-msgs cob-script-server rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''cob_android_script_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
