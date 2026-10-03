
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-quadprog";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_quadprog/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "f1fda42a8cbbab0024e984dd2e2f44ac305233041d51701a2b1ec283c2b99576";
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
