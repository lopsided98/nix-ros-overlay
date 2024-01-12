
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-noetic-random-numbers";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/random_numbers-release/archive/release/noetic/random_numbers/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "b1eba248517898185240a7f4f60dbddbe38d11b9409d55bc7512ea3903b909de";
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
