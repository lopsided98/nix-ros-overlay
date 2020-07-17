
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-foxy-random-numbers";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/random_numbers-release/archive/release/foxy/random_numbers/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ec03b0c18f5a669cbba971e71cb9b652b4689a1beb2426c716c62ce959f34926";
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
