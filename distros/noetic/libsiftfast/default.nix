
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, mk, python3Packages, rosboost-cfg, roslib, rospack, subversion }:
buildRosPackage {
  pname = "ros-noetic-libsiftfast";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/libsiftfast/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "22cdd64c7377bb355b22118fc76f59e2c2f9222b4014a145c0a864e6ee51e42c";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk rosboost-cfg roslib rospack subversion ];
  propagatedBuildInputs = [ boost python3Packages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library to compute SIFT features'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
