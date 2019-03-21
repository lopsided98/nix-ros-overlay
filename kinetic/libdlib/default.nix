
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-libdlib";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libdlib/0.6.12-0.tar.gz;
    sha256 = "8e9c7b81de3099268bff934ddce0e8176984ac80af3226f2e745147fb8d371d9";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the external c++ library dlib (http://dlib.net/) in a ROS package, so other packages can use it. The code was obtained from https://github.com/davisking/dlib . For further descriptions and tutorials see the Makefile.tarball and http://dlib.net/ .'';
    #license = lib.licenses.Boost Software License;
  };
}
