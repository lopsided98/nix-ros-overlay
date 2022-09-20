
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cairo, ceres-solver, cmake, eigen, gflags, glog, gtest, lua5, protobuf, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-cartographer";
  version = "1.0.9001-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer-release/archive/release/galactic/cartographer/1.0.9001-3.tar.gz";
    name = "1.0.9001-3.tar.gz";
    sha256 = "e6c3cb3747bfe7c2c283be1efb086aaa3c7428c0900b6f5501e68358a4e91fc9";
  };

  buildType = "cmake";
  buildInputs = [ cmake gtest python3Packages.sphinx ];
  propagatedBuildInputs = [ boost cairo ceres-solver eigen gflags glog lua5 protobuf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
