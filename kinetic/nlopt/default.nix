
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, cmake-modules, mk, catkin, rosbuild, libtool }:
buildRosPackage {
  pname = "ros-kinetic-nlopt";
  version = "2.1.13-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/nlopt/2.1.13-1.tar.gz;
    sha256 = "6580914a550c5f89fcf0bdbd304aaf5eb6643b3f6e1e5a1995013d8bd1adf2bd";
  };

  buildInputs = [ rospack cmake-modules mk rosbuild libtool ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nlopt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
