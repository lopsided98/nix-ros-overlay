
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen }:
buildRosPackage {
  pname = "ros-galactic-libnabo";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/libnabo-release/archive/release/galactic/libnabo/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "04657b40bccacf00b7216a27b156e1ee00977148781d7be8a052e2facd24b0f0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libnabo is a fast K Nearest Neighbour library for low-dimensional spaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
