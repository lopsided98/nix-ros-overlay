
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-lint-auto, ament-lint-cmake, boost }:
buildRosPackage {
  pname = "ros-kilted-random-numbers";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/random_numbers-release/archive/release/kilted/random_numbers/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "386bd9dd1ce0cae856ad28cc685e86021966e608cb2f0979e5f43bb45871802c";
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
