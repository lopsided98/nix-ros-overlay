
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-foxy-random-numbers";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/random_numbers-release/archive/release/foxy/random_numbers/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "427a010ef39d42760986981e0fa0e47955b0d0f4cb9aec7cfc71d8a70c6b89d1";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This  library contains wrappers for generating floating point values, integers, quaternions using boost libraries.

  The constructor of the wrapper is guaranteed to be thread safe and initialize its random number generator to a random seed.
  Seeds are obtained using a separate and different random number generator.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
