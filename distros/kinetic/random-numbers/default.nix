
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-kinetic-random-numbers";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/random_numbers-release/archive/release/kinetic/random_numbers/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "0e74947775fe6c8be2e455d1d471e99467d7d3252ea9d850cd531bc8c0c5fe62";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This  library contains wrappers for generating floating point values, integers, quaternions using boost libraries.
    
  The constructor of the wrapper is guaranteed to be thread safe and initialize its random number generator to a random seed.
  Seeds are obtained using a separate and different random number generator.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
