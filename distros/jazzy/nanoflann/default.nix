
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-jazzy-nanoflann";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoflann-release/archive/release/jazzy/nanoflann/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "533b12de01630ac633bbde7d20863cf19f0b846f8dbee84b73e2053b9e45238b";
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
