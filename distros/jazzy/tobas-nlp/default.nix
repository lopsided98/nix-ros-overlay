
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-quadprog }:
buildRosPackage {
  pname = "ros-jazzy-tobas-nlp";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_nlp/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "f1594829b3215e63fb1e80a6ce80004de844880cc88b2c65e7e04d0d38e49bf8";
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
