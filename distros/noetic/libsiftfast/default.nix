
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, mk, python3Packages, rosboost-cfg, roslib, rospack, subversion }:
buildRosPackage {
  pname = "ros-noetic-libsiftfast";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/libsiftfast/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "c093d3c5baa03c1b9ba5180dbfa0da672d44c1ffe3d84ce1e037b0e0bc452220";
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
