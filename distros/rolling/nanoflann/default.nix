
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-rolling-nanoflann";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoflann-release/archive/release/rolling/nanoflann/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "4cddae34459e6cb30d920368d51942dfc46afc9f3b093e5aab689467e783d5da";
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
