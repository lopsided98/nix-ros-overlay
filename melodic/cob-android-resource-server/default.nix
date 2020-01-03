
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-android-resource-server";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/melodic/cob_android_resource_server/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "aabbcf56633153105deb9131389d793848906c458654e5bed84206b0cd7106b8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_resource_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
