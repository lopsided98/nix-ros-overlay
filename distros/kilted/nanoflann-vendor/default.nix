
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-kilted-nanoflann-vendor";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoflann-release/archive/release/kilted/nanoflann_vendor/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "d338c102e224c958de366aac96ea9cbb594b16f9b1a60059aa68d55534e60b74";
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
