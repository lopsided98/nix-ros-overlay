
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, cmake-modules, git, opencv3, openssl }:
buildRosPackage {
  pname = "ros-melodic-slic";
  version = "2.1.23-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/slic/2.1.23-1.tar.gz";
    name = "2.1.23-1.tar.gz";
    sha256 = "565be41ab0971e1307cd57d5852aab77d4e2af710931e325b83026528ad4968c";
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
