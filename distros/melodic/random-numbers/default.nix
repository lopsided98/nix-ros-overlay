
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-melodic-random-numbers";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/random_numbers-release/archive/release/melodic/random_numbers/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "989cf481e8bd4c7b44278d73a549554fd874479c1f28e8d26f77fa905a43e409";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This  library contains wrappers for generating floating point values, integers, quaternions using boost libraries.

  The constructor of the wrapper is guaranteed to be thread safe and initialize its random number generator to a random seed.
  Seeds are obtained using a separate and different random number generator.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
