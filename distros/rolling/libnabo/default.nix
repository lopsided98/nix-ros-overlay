
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-libnabo";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libnabo-release/archive/release/rolling/libnabo/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "3cfcdfa3eba6cfd5e2cc817813619e77e7d0663ee464bee07ab8b4820b17e65d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "libnabo is a fast K Nearest Neighbour library for low-dimensional spaces.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
