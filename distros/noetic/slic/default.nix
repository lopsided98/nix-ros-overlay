
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, cmake-modules, git, opencv3, openssl }:
buildRosPackage {
  pname = "ros-noetic-slic";
  version = "2.1.20-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/slic/2.1.20-1.tar.gz";
    name = "2.1.20-1.tar.gz";
    sha256 = "c64e33957b4bc7892cf13b36ed3c4ebc6796a75f5d86cf390d315f0864041bcb";
  };

  buildType = "cmake";
  buildInputs = [ cacert cmake-modules git openssl ];
  propagatedBuildInputs = [ opencv3 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''SLIC-Superpizel ROS Wrapper
  This file contains the class elements of the class Slic. This class is an
  implementation of the SLIC Superpixel algorithm by Achanta et al. [PAMI'12,
  vol. 34, num. 11, pp. 2274-2282].

  This implementation is created for the specific purpose of creating
  over-segmentations in an OpenCV-based environment.'';
    license = with lib.licenses; [ "N/A" ];
  };
}
