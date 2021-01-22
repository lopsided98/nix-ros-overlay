
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-android-resource-server";
  version = "0.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/noetic/cob_android_resource_server/0.1.9-1.tar.gz";
    name = "0.1.9-1.tar.gz";
    sha256 = "ca6dd7d3adbaf9e4d12501a872b6847c1816236b19d08a909bd70fd4e6cb8c08";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''cob_android_resource_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
