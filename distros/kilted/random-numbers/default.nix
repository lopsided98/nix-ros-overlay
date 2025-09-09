
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-lint-auto, ament-lint-cmake, boost }:
buildRosPackage {
  pname = "ros-kilted-random-numbers";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/random_numbers-release/archive/release/kilted/random_numbers/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "747daac7f7e9b590b1353205ad183ef3902a64636b222a31dabaa4d5d6acffb6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This  library contains wrappers for generating floating point values, integers, quaternions using boost libraries.

  The constructor of the wrapper is guaranteed to be thread safe and initialize its random number generator to a random seed.
  Seeds are obtained using a separate and different random number generator.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
