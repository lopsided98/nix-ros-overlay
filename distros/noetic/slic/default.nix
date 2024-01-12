
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, cmake-modules, git, opencv, openssl }:
buildRosPackage {
  pname = "ros-noetic-slic";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/slic/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "6b19a73df1d00ff17ad33119db6fafd6d3df4ca0a1dda42fdbf7d0a2bd323364";
  };

  buildType = "cmake";
  buildInputs = [ cacert cmake cmake-modules git openssl ];
  propagatedBuildInputs = [ opencv opencv.cxxdev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''SLIC-Superpizel ROS Wrapper
  This file contains the class elements of the class Slic. This class is an
  implementation of the SLIC Superpixel algorithm by Achanta et al. [PAMI'12,
  vol. 34, num. 11, pp. 2274-2282].

  This implementation is created for the specific purpose of creating
  over-segmentations in an OpenCV-based environment.'';
    license = with lib.licenses; [ "N-A" ];
  };
}
