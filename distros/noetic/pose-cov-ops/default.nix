
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, geometry-msgs, gtest, mrpt2, ros-environment, roscpp, rosunit, tf2 }:
buildRosPackage {
  pname = "ros-noetic-pose-cov-ops";
  version = "0.3.11-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/pose_cov_ops-release/archive/release/noetic/pose_cov_ops/0.3.11-1.tar.gz";
    name = "0.3.11-1.tar.gz";
    sha256 = "fbb4fdeb3b6248f241770ffede71d04342567293fd4189f13c810c5c3154a64c";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake ros-environment ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ geometry-msgs mrpt2 roscpp tf2 ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''C++ library for SE(2)/SE(3) pose composition operations with uncertainty'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
