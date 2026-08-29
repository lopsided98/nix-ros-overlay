
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-rolling-nanoflann-vendor";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoflann-release/archive/release/rolling/nanoflann_vendor/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "f767923e3753fdbedd1b6f5ffeec43e288a99c80e33fc192199d0de11c1db5bd";
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
