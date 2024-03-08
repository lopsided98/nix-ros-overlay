
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-libnabo";
  version = "1.0.7-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libnabo-release/archive/release/rolling/libnabo/1.0.7-4.tar.gz";
    name = "1.0.7-4.tar.gz";
    sha256 = "99993b352d68db7945342c578b7cd8ec54727b1fa041cb9ac88ef16ead2d7c7a";
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
