
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-jazzy-nanoflann-vendor";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoflann-release/archive/release/jazzy/nanoflann_vendor/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "da9e1294b7e1d4b0f5b96740d5fcf4daa57216a099f8213ba4530f00849daf66";
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
