
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, cmake-modules, git, opencv, openssl }:
buildRosPackage {
  pname = "ros-melodic-slic";
  version = "2.1.24-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/slic/2.1.24-2.tar.gz";
    name = "2.1.24-2.tar.gz";
    sha256 = "9520a466a57433c5f8f949ecd9337e2f30038b298d793af438747f22d9d22ab1";
  };

  buildType = "cmake";
  buildInputs = [ cacert cmake cmake-modules git openssl ];
  propagatedBuildInputs = [ opencv ];
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
