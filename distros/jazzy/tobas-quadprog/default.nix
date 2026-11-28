
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-quadprog";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_quadprog/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "7684502d06b94f8a72695a6bed266d19cdf3889b6cecd56887d73c857e558cf7";
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
