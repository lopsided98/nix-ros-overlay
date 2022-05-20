
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, geometry-msgs, gtest, mrpt2, ros-environment, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-noetic-pose-cov-ops";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/pose_cov_ops-release/archive/release/noetic/pose_cov_ops/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "a39bd4d3350f24be404f95c4e4e524b4dfa68cc05aa67f6bf0152d1286daa921";
  };

  buildType = "cmake";
  buildInputs = [ ros-environment ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ geometry-msgs mrpt2 roscpp ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''C++ library for SE(2)/SE(3) pose composition operations with uncertainty'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
