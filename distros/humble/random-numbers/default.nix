
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-cmake, boost }:
buildRosPackage {
  pname = "ros-humble-random-numbers";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/random_numbers-release/archive/release/humble/random_numbers/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "d70d1e9b655a20572f167d69b7b49295827896ca1927ebaeba6acbb538f181a2";
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
