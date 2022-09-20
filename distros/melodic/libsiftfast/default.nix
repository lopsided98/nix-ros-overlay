
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, mk, pythonPackages, rosboost-cfg, roslib, rospack, subversion }:
buildRosPackage {
  pname = "ros-melodic-libsiftfast";
  version = "2.1.24-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/libsiftfast/2.1.24-2.tar.gz";
    name = "2.1.24-2.tar.gz";
    sha256 = "e58938eb8fb2959ca83ccff2ca6d3b44f8d09b99fdd3809f47d087c9dfef2613";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk rosboost-cfg roslib rospack subversion ];
  propagatedBuildInputs = [ boost pythonPackages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library to compute SIFT features'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
