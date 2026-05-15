
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigenpy, eiquadprog, git, graphviz, jrl-cmakemodules, pinocchio }:
buildRosPackage {
  pname = "ros-rolling-tsid";
  version = "1.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tsid-release/archive/release/rolling/tsid/1.10.0-1.tar.gz";
    name = "1.10.0-1.tar.gz";
    sha256 = "9f40c6ed19add7e165aaadde2e20fa2c5e837c4e7ce6397e0122346acaef17fa";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git jrl-cmakemodules ];
  propagatedBuildInputs = [ ament-cmake boost eigenpy eiquadprog graphviz pinocchio ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Efficient Task Space Inverse Dynamics (TSID) based on Pinocchio";
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
