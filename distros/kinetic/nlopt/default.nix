
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libtool, mk, rosbuild, rospack }:
buildRosPackage {
  pname = "ros-kinetic-nlopt";
  version = "2.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/nlopt/2.1.15-1.tar.gz";
    name = "2.1.15-1.tar.gz";
    sha256 = "c48f0d479f1e933231a3f05555bcf4decbeea786c5a47344dec13175c56226a3";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules libtool mk rosbuild rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nlopt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
