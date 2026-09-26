
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-quadprog }:
buildRosPackage {
  pname = "ros-jazzy-tobas-nlp";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_nlp/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "90fed0b5b8652dfa20f6bd643595df6bb17bc3953f89debaec1e86b5026103cd";
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
