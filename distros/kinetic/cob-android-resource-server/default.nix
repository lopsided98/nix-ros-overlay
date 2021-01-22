
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-android-resource-server";
  version = "0.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_android-release/archive/release/kinetic/cob_android_resource_server/0.1.9-1.tar.gz";
    name = "0.1.9-1.tar.gz";
    sha256 = "70130ac064936b64801139e561e7ec22e774e8f62f13837b7cdb3406b98e91bc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''cob_android_resource_server'';
    license = with lib.licenses; [ asl20 ];
  };
}
