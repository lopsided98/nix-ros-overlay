
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-quadprog }:
buildRosPackage {
  pname = "ros-jazzy-tobas-nlp";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_nlp/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "7e7aa90c16842d3d6b62e73cb1b0ef724fcf2e3add7aa4944e7e5c8326a0b5bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-quadprog ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nonlinear optimization algorithms including Newton and sequential quadratic programming solvers.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
