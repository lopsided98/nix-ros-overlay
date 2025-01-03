
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-android-msgs, cob-script-server, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-android-script-server";
  version = "0.1.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/noetic/cob_android_script_server/0.1.11-1.tar.gz";
    name = "0.1.11-1.tar.gz";
    sha256 = "c8be67caad73a545e52cf58ad435ea60c16c7929dc8e458a77076fcbb7323644";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ cob-android-msgs cob-script-server rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "cob_android_script_server";
    license = with lib.licenses; [ asl20 ];
  };
}
