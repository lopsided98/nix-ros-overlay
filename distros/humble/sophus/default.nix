
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ceres-solver, cmake, eigen, fmt }:
buildRosPackage {
  pname = "ros-humble-sophus";
  version = "1.22.9102-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/humble/sophus/1.22.9102-2.tar.gz";
    name = "1.22.9102-2.tar.gz";
    sha256 = "681c15d9db2da20b909b2185ac6429c3b91362939a62b4b796e23969ac96663f";
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
