
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen }:
buildRosPackage {
  pname = "ros-foxy-libnabo";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/libnabo-release/archive/release/foxy/libnabo/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "4303b216d13fe042f0f9406e639296e699e134a6426afb05a6ab4cdf6f84ba8c";
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
