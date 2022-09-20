
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, eigen }:
buildRosPackage {
  pname = "ros-melodic-libnabo";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/libnabo-release/archive/release/melodic/libnabo/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "f23830669052f20e65709863bd84f355267c114f62e9982f6316fdfe5ce12731";
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
