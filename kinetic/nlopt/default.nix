
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libtool, cmake-modules, catkin, mk, rosbuild, rospack }:
buildRosPackage {
  pname = "ros-kinetic-nlopt";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/nlopt/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "801b7246d829a75fd9eb84d52fef2dc03dbeb3bfd595ba4e951e2135ea27ddf4";
  };

  buildType = "catkin";
  buildInputs = [ libtool cmake-modules mk rosbuild rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nlopt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
