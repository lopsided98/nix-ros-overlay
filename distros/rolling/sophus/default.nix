
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ceres-solver, cmake, eigen, fmt }:
buildRosPackage {
  pname = "ros-rolling-sophus";
  version = "1.22.9102-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/rolling/sophus/1.22.9102-3.tar.gz";
    name = "1.22.9102-3.tar.gz";
    sha256 = "fcae5689e6368d65f260c9b78c620cafc2d87e2644887a67e69ee05ab5f8630f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ceres-solver eigen fmt ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ implementation of Lie Groups using Eigen.";
    license = with lib.licenses; [ mit ];
  };
}
