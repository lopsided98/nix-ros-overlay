
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, git, cacert, openssl, cmake, opencv3 }:
buildRosPackage {
  pname = "ros-melodic-slic";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/slic/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "9de59c93cd889ca9cd1a8abe3e859424efa134e7c76f6584c207f7c805b4972e";
  };

  buildType = "cmake";
  buildInputs = [ cmake-modules git cacert openssl opencv3 ];
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
