
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-libdlib";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/melodic/libdlib/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "3c2cecdfae9dd0e4ae09e63cfcd50964d29f2949591f2f9f58e9fe6bbe3049e2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the external c++ library dlib (http://dlib.net/) in a ROS package, so other packages can use it. The code was obtained from https://github.com/davisking/dlib . For further descriptions and tutorials see the Makefile.tarball and http://dlib.net/ .'';
    license = with lib.licenses; [ "BSL-1.0" ];
  };
}
