
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, ode, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-ompl";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/rolling/ompl/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "bea1737eebf878b3c23f45a1167ab1ef4b0862c71e1bd59d2bcfe8c81121511d";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ boost eigen flann ode ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "OMPL is a free sampling-based motion planning library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
