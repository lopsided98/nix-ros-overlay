
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libtool, mk, rosbuild, rospack }:
buildRosPackage {
  pname = "ros-kinetic-nlopt";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/nlopt/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "3eb9b31a8d0016a1819c7c28a9efdc1c31963514abfa10ba8b28f43e3491ad56";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules libtool mk rosbuild rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nlopt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
