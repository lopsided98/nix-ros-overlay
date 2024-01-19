
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abseil-cpp, boost, cairo, ceres-solver, cmake, eigen, gflags, git, glog, gtest, lua5, protobuf, python3Packages }:
buildRosPackage {
  pname = "ros-humble-cartographer";
  version = "2.0.9002-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer-release/archive/release/humble/cartographer/2.0.9002-2.tar.gz";
    name = "2.0.9002-2.tar.gz";
    sha256 = "ee74f0e0d86be3b0c946edf63212372e6420861713cce3b79955c2d1eb9c0cca";
  };

  buildType = "cmake";
  buildInputs = [ cmake git gtest python3Packages.sphinx ];
  propagatedBuildInputs = [ abseil-cpp boost cairo ceres-solver eigen gflags glog lua5 protobuf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
