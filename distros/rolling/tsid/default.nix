
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigenpy, eiquadprog, git, graphviz, pinocchio }:
buildRosPackage {
  pname = "ros-rolling-tsid";
  version = "1.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tsid-release/archive/release/rolling/tsid/1.9.0-2.tar.gz";
    name = "1.9.0-2.tar.gz";
    sha256 = "548f1f0f8abc48e345f6c7c43d3f2b618abbfdda427113e93120c374d9652842";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ ament-cmake boost eigenpy eiquadprog graphviz pinocchio ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Efficient Task Space Inverse Dynamics (TSID) based on Pinocchio";
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
