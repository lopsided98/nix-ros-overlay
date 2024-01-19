
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-libnabo";
  version = "1.0.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libnabo-release/archive/release/rolling/libnabo/1.0.7-3.tar.gz";
    name = "1.0.7-3.tar.gz";
    sha256 = "ccd35392bf761f8821413d2f5e333d1ae14102959200104265d98fb66c3dfbfa";
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
