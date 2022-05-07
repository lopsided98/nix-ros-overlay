
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gtest, mrpt-bridge, mrpt2, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pose-cov-ops";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/pose_cov_ops-release/archive/release/melodic/pose_cov_ops/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "794632c6d7d6f755a451573ced192e5f73ac0098b057899ee9226c0c9d3aa5b5";
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
