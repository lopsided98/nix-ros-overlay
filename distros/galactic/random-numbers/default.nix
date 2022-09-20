
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-cmake, boost }:
buildRosPackage {
  pname = "ros-galactic-random-numbers";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/random_numbers-release/archive/release/galactic/random_numbers/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "ce520bd61df0ef1a3929bcb59e8d03e4c8345fc0a42206b4f5880dad71359d80";
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
