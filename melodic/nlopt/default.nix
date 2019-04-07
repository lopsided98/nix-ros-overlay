
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, cmake-modules, mk, catkin, rosbuild, libtool }:
buildRosPackage {
  pname = "ros-melodic-nlopt";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/nlopt/2.1.11-0.tar.gz;
    sha256 = "11db2eb2176747d51236c4504a61a75e51dec3f41d103c3768563b403d7e46ae";
  };

  buildInputs = [ rospack cmake-modules mk rosbuild libtool ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nlopt'';
    #license = lib.licenses.BSD;
  };
}
