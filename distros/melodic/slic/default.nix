
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, cmake-modules, git, opencv3, openssl }:
buildRosPackage {
  pname = "ros-melodic-slic";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/slic/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "3939479d4b0f1b013c9a4c184dbde1688c145644c68679075d6fa7cb8dbfc360";
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
