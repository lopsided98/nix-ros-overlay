
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-lyrical-nanoflann-vendor";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoflann-release/archive/release/lyrical/nanoflann_vendor/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "a2ccfdf825cfc282955a07b2cb918fa6f2553fc541d5fd1cc7fb85ca6f86f255";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "nanoflann: a C++11 header-only library for Nearest Neighbor (NN) search
    with KD-trees, optimized for point clouds and Eigen matrices.";
    license = with lib.licenses; [ bsd2 ];
  };
}
