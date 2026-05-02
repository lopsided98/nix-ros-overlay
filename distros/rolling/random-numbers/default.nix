
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-lint-auto, ament-lint-cmake, boost }:
buildRosPackage {
  pname = "ros-rolling-random-numbers";
  version = "2.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/random_numbers-release/archive/release/rolling/random_numbers/2.0.4-2.tar.gz";
    name = "2.0.4-2.tar.gz";
    sha256 = "f4be0e044d423a79b49182b436aef5bf5c4941639fc8a45a4b1f346331d8061c";
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
