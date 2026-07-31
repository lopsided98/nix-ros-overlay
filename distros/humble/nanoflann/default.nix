
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-humble-nanoflann";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoflann-release/archive/release/humble/nanoflann/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "1f7d6ab4e1ff6e92dd665b82c11668b1c321cdf202ef719de160f51c4bd85747";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "nanoflann: a C++11 header-only library for Nearest Neighbor (NN) search
    with KD-trees, optimized for point clouds and Eigen matrices.";
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
