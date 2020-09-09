
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, mk, python3Packages, rosboost-cfg, roslib, rospack, subversion }:
buildRosPackage {
  pname = "ros-noetic-libsiftfast";
  version = "2.1.21-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/libsiftfast/2.1.21-1.tar.gz";
    name = "2.1.21-1.tar.gz";
    sha256 = "5844fe48faa3348a6f3ca6782e7713978e8ba550c7ef47b57e21f65d323d76d6";
  };

  buildType = "catkin";
  buildInputs = [ mk rosboost-cfg roslib rospack subversion ];
  propagatedBuildInputs = [ boost python3Packages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library to compute SIFT features'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
