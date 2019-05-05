
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, boost }:
buildRosPackage {
  pname = "ros-lunar-random-numbers";
  version = "0.3.1-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/random_numbers-release/archive/release/lunar/random_numbers/0.3.1-1.tar.gz;
    sha256 = "509845f46f8d131433413130dc704c31e64353dfcf77afe9e89f9849caf19910";
  };

  buildInputs = [ boost ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This  library contains wrappers for generating floating point values, integers, quaternions using boost libraries.
    
  The constructor of the wrapper is guaranteed to be thread safe and initialize its random number generator to a random seed.
  Seeds are obtained using a separate and different random number generator.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
