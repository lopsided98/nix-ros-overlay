
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, ode, pkg-config }:
buildRosPackage {
  pname = "ros-humble-ompl";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/humble/ompl/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "69e6043e303608e0eb875647ffcdaba7e5d3e783644b7efb5851b0849062a48d";
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
