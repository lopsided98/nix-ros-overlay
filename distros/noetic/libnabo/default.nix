
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, eigen }:
buildRosPackage {
  pname = "ros-noetic-libnabo";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/libnabo-release/archive/release/noetic/libnabo/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "26fe2ba879222857c58137774f0f8dc608adc75093fbdd45c8d03c7890508cf2";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost catkin eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libnabo is a fast K Nearest Neighbour library for low-dimensional spaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
