
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-quadprog";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_quadprog/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "2d2cc8389ab02782ba397ee629a6f50ebc4278c5c51303081dd732aac238de63";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-eigen-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Quadratic-programming interfaces and active-set, interior-point, and qpOASES-based solvers.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
