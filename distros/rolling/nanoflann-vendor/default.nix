
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-rolling-nanoflann-vendor";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoflann-release/archive/release/rolling/nanoflann_vendor/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "03e8c87b5a33677eb5d1916040b048ebdc6aac436bdb15f01883227ffcc80af0";
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
