
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_pinocchio, ament-cmake, boost, cmake, doxygen, eigenpy, eiquadprog, git, graphviz }:
buildRosPackage {
  pname = "ros-lyrical-tsid";
  version = "1.9.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tsid-release/archive/release/lyrical/tsid/1.9.0-3.tar.gz";
    name = "1.9.0-3.tar.gz";
    sha256 = "13e2c70e436ebb528af1d2cd51e05bee3e74be07bb322280061e2987c48a7962";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ _unresolved_pinocchio ament-cmake boost eigenpy eiquadprog graphviz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Efficient Task Space Inverse Dynamics (TSID) based on Pinocchio";
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
