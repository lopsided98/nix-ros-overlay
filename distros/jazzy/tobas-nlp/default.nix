
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-quadprog }:
buildRosPackage {
  pname = "ros-jazzy-tobas-nlp";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_nlp/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "11e41e53c37aa958f1ad50c49bcbc619e2d49c1415a79b69c2c1ea9a6a96111d";
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
