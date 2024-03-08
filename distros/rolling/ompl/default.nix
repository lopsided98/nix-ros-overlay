
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, ode, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-ompl";
  version = "1.5.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/rolling/ompl/1.5.2-4.tar.gz";
    name = "1.5.2-4.tar.gz";
    sha256 = "c6e2d7f1c827fd35871a17166431a1f268ca63dfd7d567ab1d30cd3b3c2e11bb";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ boost eigen flann ode ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OMPL is a free sampling-based motion planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
