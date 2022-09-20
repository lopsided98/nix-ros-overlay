
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, geometry-msgs, gtest, mrpt2, ros-environment, roscpp, rosunit, tf2 }:
buildRosPackage {
  pname = "ros-melodic-pose-cov-ops";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/pose_cov_ops-release/archive/release/melodic/pose_cov_ops/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "f1bc88e04571b4f900da2d32a44f28dcb6819bbbabea31d3d944ab3d80284a01";
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
