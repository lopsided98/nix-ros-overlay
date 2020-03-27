
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-resource-server";
  version = "0.1.7-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_resource_server/0.1.7-2.tar.gz";
    name = "0.1.7-2.tar.gz";
    sha256 = "d7f934fbeb6751406cd666126eb45716b3b624d9a56af32686c133ea86ede67f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_resource_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
