
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-libnabo";
  version = "1.0.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libnabo-release/archive/release/rolling/libnabo/1.0.7-2.tar.gz";
    name = "1.0.7-2.tar.gz";
    sha256 = "93bc05da30dcbe2b0e638d1ca40d5809b928f86d61d3b908ad7c1b6855852389";
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
