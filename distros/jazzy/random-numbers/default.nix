
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-cmake, boost }:
buildRosPackage {
  pname = "ros-jazzy-random-numbers";
  version = "2.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/random_numbers-release/archive/release/jazzy/random_numbers/2.0.1-5.tar.gz";
    name = "2.0.1-5.tar.gz";
    sha256 = "2348f58b827d8e101d72d4b5ad7ace7f58cb589b675f6860b8a7a2ba7ac65740";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This  library contains wrappers for generating floating point values, integers, quaternions using boost libraries.

  The constructor of the wrapper is guaranteed to be thread safe and initialize its random number generator to a random seed.
  Seeds are obtained using a separate and different random number generator.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
