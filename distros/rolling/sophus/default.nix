
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ceres-solver, cmake, eigen, fmt }:
buildRosPackage {
  pname = "ros-rolling-sophus";
  version = "1.22.9102-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/rolling/sophus/1.22.9102-2.tar.gz";
    name = "1.22.9102-2.tar.gz";
    sha256 = "563e191b91404da1162232417f31540e0747291e58d9606d6f0147dba48f6e05";
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
