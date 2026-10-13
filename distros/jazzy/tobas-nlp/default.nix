
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-quadprog }:
buildRosPackage {
  pname = "ros-jazzy-tobas-nlp";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_nlp/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "8734ab484d591b3af9e1249c90baefaf924a97b01b373621c95bb81d8427d620";
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
