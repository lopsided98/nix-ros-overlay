
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-resource-server";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_resource_server/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "0f689c6038b28f0050834211d7491635a5bcbc0678f8c1e99f19a3cb1998965f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_android_resource_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
