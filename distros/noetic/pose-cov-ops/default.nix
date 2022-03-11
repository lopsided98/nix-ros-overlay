
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gtest, mrpt-bridge, mrpt2, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-noetic-pose-cov-ops";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/pose_cov_ops-release/archive/release/noetic/pose_cov_ops/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "2ea9a6b1920a4d26e45ece0f8363b1c95126a2eaa84039dd531631207914f612";
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
