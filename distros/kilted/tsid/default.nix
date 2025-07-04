
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigenpy, eiquadprog, git, graphviz, pinocchio }:
buildRosPackage {
  pname = "ros-kilted-tsid";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tsid-release/archive/release/kilted/tsid/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "575cfc44db739b0c616d0ff626b6a9dcbe8554a67fac72e56e009553cd5314ac";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ ament-cmake boost eigenpy eiquadprog graphviz pinocchio ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Efficient Task Space Inverse Dynamics (TSID) based on Pinocchio";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
