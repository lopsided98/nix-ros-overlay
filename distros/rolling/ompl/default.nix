
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, ode, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-ompl";
  version = "1.5.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/rolling/ompl/1.5.2-3.tar.gz";
    name = "1.5.2-3.tar.gz";
    sha256 = "5430740e8e904c1b6134a711e93970915efecfcbd05e58660a1d17eb07bdacf5";
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
