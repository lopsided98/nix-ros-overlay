
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abseil-cpp, boost, cairo, ceres-solver, cmake, eigen, gflags, git, glog, gtest, lua5, protobuf, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-cartographer";
  version = "2.0.9002-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer-release/archive/release/rolling/cartographer/2.0.9002-5.tar.gz";
    name = "2.0.9002-5.tar.gz";
    sha256 = "c200f47cd01605084cbd7b308f56cf434ed3158e260586c5909c3dd7a2a7ea38";
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
