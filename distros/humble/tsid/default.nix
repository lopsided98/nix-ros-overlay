
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigenpy, eiquadprog, git, graphviz, pinocchio }:
buildRosPackage {
  pname = "ros-humble-tsid";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tsid-release/archive/release/humble/tsid/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "e1b38b29e5e2385def583da567f8904974eabb3e0a6e2829474ea03eba4cbb7e";
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
