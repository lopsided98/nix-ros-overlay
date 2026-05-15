
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigenpy, eiquadprog, git, graphviz, jrl-cmakemodules, pinocchio }:
buildRosPackage {
  pname = "ros-kilted-tsid";
  version = "1.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tsid-release/archive/release/kilted/tsid/1.10.0-1.tar.gz";
    name = "1.10.0-1.tar.gz";
    sha256 = "eacb30497cf180f95f6ff35add72d35c3636e98856c47b3da06d266c6031adfa";
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
