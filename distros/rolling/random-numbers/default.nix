
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-cmake, boost }:
buildRosPackage {
  pname = "ros-rolling-random-numbers";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/random_numbers-release/archive/release/rolling/random_numbers/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "6e7fe0f9a3209f2f2d199a7b751330296350aa3e9c33ff6c2a16ecf45ec30888";
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
