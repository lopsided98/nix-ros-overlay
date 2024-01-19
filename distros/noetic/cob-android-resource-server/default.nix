
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-android-resource-server";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/noetic/cob_android_resource_server/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "259bfab83811916e28ae201e2bb4aeb2961509844c722584b375203ebb8c5697";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''cob_android_resource_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
