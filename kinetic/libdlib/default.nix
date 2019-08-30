
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-libdlib";
  version = "0.6.13-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libdlib/0.6.13-1.tar.gz;
    sha256 = "2dce81535a4d27c1c631331d24ac1c5ef433d99e1c2aded2e9e169395d8df4cd";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the external c++ library dlib (http://dlib.net/) in a ROS package, so other packages can use it. The code was obtained from https://github.com/davisking/dlib . For further descriptions and tutorials see the Makefile.tarball and http://dlib.net/ .'';
    license = with lib.licenses; [ boost ];
  };
}
