
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-libdlib";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/noetic/libdlib/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "704258cc1b7c08346fb6a622edfeac3a1575bfdf2d586039f83baa2d65a792f0";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the external c++ library dlib (http://dlib.net/) in a ROS package, so other packages can use it. The code was obtained from https://github.com/davisking/dlib . For further descriptions and tutorials see the Makefile.tarball and http://dlib.net/ .'';
    license = with lib.licenses; [ boost ];
  };
}
