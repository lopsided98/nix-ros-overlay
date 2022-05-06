
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gtest, mrpt-bridge, mrpt2, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-noetic-pose-cov-ops";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/pose_cov_ops-release/archive/release/noetic/pose_cov_ops/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "ceac6165ee9ab4c98c9fdb41e816bb80fa63fa9e5d85929ac1bdf1bf60804a7a";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ geometry-msgs mrpt-bridge mrpt2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library for SE(2/3) pose and 2D/3D point
    composition operations with uncertainty'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
