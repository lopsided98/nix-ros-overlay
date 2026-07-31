
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-lyrical-nanoflann";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoflann-release/archive/release/lyrical/nanoflann/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "2a42122922d3da204f648a7e5bb2657365a4e4f7c88f198e3cf0cd34963817e1";
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
