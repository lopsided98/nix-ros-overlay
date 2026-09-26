
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-quadprog";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_quadprog/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "c6e9df4bd00c92a028a6444af7e6e4edc6f06114595b6123f7723ffc75210761";
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
