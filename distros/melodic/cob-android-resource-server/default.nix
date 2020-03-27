
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-android-resource-server";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/melodic/cob_android_resource_server/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "afc85c9ae6b2d8aeb6da8cd63a4c40108485b3303750b65e1a08bada2b16d87b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_resource_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
