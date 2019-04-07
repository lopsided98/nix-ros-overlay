
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, git, cacert, openssl, cmake, opencv3 }:
buildRosPackage {
  pname = "ros-melodic-slic";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/slic/2.1.11-0.tar.gz;
    sha256 = "70cc442ffa095dd5da8b61cd98ac71d2399f5c66e2becb9509a8860c6b3f55cd";
  };

  buildInputs = [ cacert cmake-modules openssl git opencv3 ];
  propagatedBuildInputs = [ opencv3 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''SLIC-Superpizel ROS Wrapper
  This file contains the class elements of the class Slic. This class is an
  implementation of the SLIC Superpixel algorithm by Achanta et al. [PAMI'12,
  vol. 34, num. 11, pp. 2274-2282].

  This implementation is created for the specific purpose of creating
  over-segmentations in an OpenCV-based environment.'';
    #license = lib.licenses.N/A;
  };
}
