
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen }:
buildRosPackage {
  pname = "ros-iron-libnabo";
  version = "1.0.7-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libnabo-release/archive/release/iron/libnabo/1.0.7-4.tar.gz";
    name = "1.0.7-4.tar.gz";
    sha256 = "023700585b3f09b087bcb80f9a8a5e74a0a4f7eb78cdd36096c49c0b9a6c7f95";
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
