
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigenpy, eiquadprog, git, graphviz, jrl-cmakemodules, pinocchio }:
buildRosPackage {
  pname = "ros-jazzy-tsid";
  version = "1.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tsid-release/archive/release/jazzy/tsid/1.10.0-1.tar.gz";
    name = "1.10.0-1.tar.gz";
    sha256 = "e38e9ce2c8c4c8b641432423fe4064c36cc4c7f44bd127cb04e8b08dbc974948";
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
