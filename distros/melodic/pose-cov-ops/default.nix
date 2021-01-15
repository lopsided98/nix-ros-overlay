
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gtest, mrpt-bridge, mrpt1, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pose-cov-ops";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/pose_cov_ops-release/archive/release/melodic/pose_cov_ops/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "03a6c9edc43d420a3532232fdbd48db4d4bf69acea65d8a5ce153b7f19b6595f";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ geometry-msgs mrpt-bridge mrpt1 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library for SE(2/3) pose and 2D/3D point
    composition operations with uncertainty'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
