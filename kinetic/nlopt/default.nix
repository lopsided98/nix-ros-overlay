
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, cmake-modules, mk, catkin, rosbuild, libtool }:
buildRosPackage {
  pname = "ros-kinetic-nlopt";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/nlopt/2.1.11-0.tar.gz;
    sha256 = "26f9fb61066acef3154ee628653722ad7b2bf66ec9452af5cb3b06a0a081a1c9";
  };

  buildInputs = [ rospack cmake-modules mk rosbuild libtool ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nlopt'';
    #license = lib.licenses.BSD;
  };
}
