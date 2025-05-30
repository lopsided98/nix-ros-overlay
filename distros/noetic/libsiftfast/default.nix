
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, mk, python3Packages, rosboost-cfg, roslib, rospack, subversion }:
buildRosPackage {
  pname = "ros-noetic-libsiftfast";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/libsiftfast/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "91084823dab4e1c584bd52c516b6fae87d1c19abbcadf41038c8b2468b0a5300";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk rosboost-cfg roslib rospack subversion ];
  propagatedBuildInputs = [ boost python3Packages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Library to compute SIFT features";
    license = with lib.licenses; [ "LGPL" ];
  };
}
