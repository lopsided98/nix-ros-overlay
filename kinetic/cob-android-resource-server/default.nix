
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-resource-server";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_resource_server/0.1.4-0.tar.gz;
    sha256 = "72b07c435c3804596a0eb00f7a6f451dddbedbc4c456903ab5d0429ce2bee36f";
  };

  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_resource_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
