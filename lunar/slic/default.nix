
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, git, cacert, openssl, cmake, opencv3 }:
buildRosPackage {
  pname = "ros-lunar-slic";
  version = "2.1.11-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/slic/2.1.11-2.tar.gz;
    sha256 = "03363b892b019effd6b99fb18b2e683620277be7866623c7e022ed8f95b6ffc8";
  };

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
