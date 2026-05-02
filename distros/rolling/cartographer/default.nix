
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abseil-cpp, boost, cairo, ceres-solver, cmake, eigen, gflags, git, glog, gtest, lua5, protobuf, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-cartographer";
  version = "2.0.9004-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer-release/archive/release/rolling/cartographer/2.0.9004-2.tar.gz";
    name = "2.0.9004-2.tar.gz";
    sha256 = "cba0754bae662712888fd42b7d8b779265adb0cf5bf26cf24ba2a64e12aa518f";
  };

  buildType = "cmake";
  buildInputs = [ cmake git gtest python3Packages.sphinx ];
  propagatedBuildInputs = [ abseil-cpp boost cairo ceres-solver eigen gflags glog lua5 protobuf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations.";
    license = with lib.licenses; [ asl20 ];
  };
}
