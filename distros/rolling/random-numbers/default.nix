
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-cmake, boost }:
buildRosPackage {
  pname = "ros-rolling-random-numbers";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/random_numbers-release/archive/release/rolling/random_numbers/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "605cb9cf22c1386e2a98d364281d090ed0db9ec38600c16f0809b24c291b4e2a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This  library contains wrappers for generating floating point values, integers, quaternions using boost libraries.

  The constructor of the wrapper is guaranteed to be thread safe and initialize its random number generator to a random seed.
  Seeds are obtained using a separate and different random number generator.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
