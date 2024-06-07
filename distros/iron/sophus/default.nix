
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ceres-solver, cmake, eigen, fmt }:
buildRosPackage {
  pname = "ros-iron-sophus";
  version = "1.22.9102-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/iron/sophus/1.22.9102-2.tar.gz";
    name = "1.22.9102-2.tar.gz";
    sha256 = "78a9a19e91aabdbf764745e58fdc41b5e417567625f32657de06b7f218452e93";
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
