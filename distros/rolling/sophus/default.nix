
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-sophus";
  version = "1.22.9100-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/rolling/sophus/1.22.9100-1.tar.gz";
    name = "1.22.9100-1.tar.gz";
    sha256 = "7d2e7c41aad833b0fc1a4c42ba4f95e7586fa37d08aa9f2d1bf0daa52e8eafd0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ implementation of Lie Groups using Eigen.";
    license = with lib.licenses; [ mit ];
  };
}
