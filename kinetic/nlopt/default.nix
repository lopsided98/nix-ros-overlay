
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, cmake-modules, mk, catkin, rosbuild, libtool }:
buildRosPackage {
  pname = "ros-kinetic-nlopt";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/nlopt/2.1.12-1.tar.gz;
    sha256 = "3d40fa4bd27044767498f5230dfc5067d4684e72bae2ec3de89fa6045df4c39c";
  };

  buildInputs = [ rospack cmake-modules mk rosbuild libtool ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nlopt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
