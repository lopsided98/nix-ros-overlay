
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, ode, pkg-config }:
buildRosPackage {
  pname = "ros-noetic-ompl";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ompl-release/archive/release/noetic/ompl/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "1b6399dcb9f49c2629550a4181f3fa16a651cd053fcfad297dfa60e21779ad04";
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
