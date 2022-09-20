
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, geometry-msgs, gtest, mrpt2, ros-environment, roscpp, rosunit, tf2 }:
buildRosPackage {
  pname = "ros-noetic-pose-cov-ops";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/pose_cov_ops-release/archive/release/noetic/pose_cov_ops/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "d29d619df4e434f38ca90e53882d01a1035d13ceadcfd13916dcad89ba7e45af";
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
