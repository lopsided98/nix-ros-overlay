
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-libdlib";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/noetic/libdlib/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "217bb8d8c749b3c2d3235183c0ee685a1bb0310ab92391a8b2a4b1e37a748f7c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the external c++ library dlib (http://dlib.net/) in a ROS package, so other packages can use it. The code was obtained from https://github.com/davisking/dlib . For further descriptions and tutorials see the Makefile.tarball and http://dlib.net/ .'';
    license = with lib.licenses; [ "BSL-1.0" ];
  };
}
