
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ceres-solver, cmake, eigen, fmt }:
buildRosPackage {
  pname = "ros-kilted-sophus";
  version = "1.22.9102-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/kilted/sophus/1.22.9102-3.tar.gz";
    name = "1.22.9102-3.tar.gz";
    sha256 = "a9578391b0956413c41c23742414353b3ab09b315918ba5e8480c35ed79a90dc";
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
