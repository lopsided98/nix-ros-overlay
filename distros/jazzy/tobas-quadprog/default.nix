
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-quadprog";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_quadprog/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "e3d78e92d6406161e36794506b8d1eb8bd7e97b21cbd4edcd27399f7d811e64f";
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
