
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, cmake-modules, cmake, cacert, openssl, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-slic";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/slic/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "535adb5b099fe7dad452dce9a88373ccb762dbd134fb8465c26b7fe209624dd5";
  };

  buildType = "cmake";
  buildInputs = [ git cmake-modules cacert openssl opencv3 ];
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
