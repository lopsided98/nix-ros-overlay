
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-android-resource-server";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/melodic/cob_android_resource_server/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "1a772d4b0a80badcc4482cb321e4be9ff680ec6ba1caa56997df8a2d335b5dcf";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''cob_android_resource_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
