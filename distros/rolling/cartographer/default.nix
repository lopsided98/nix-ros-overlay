
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abseil-cpp, boost, cairo, ceres-solver, cmake, eigen, gflags, git, glog, gtest, lua5, protobuf, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-cartographer";
  version = "2.0.9002-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer-release/archive/release/rolling/cartographer/2.0.9002-4.tar.gz";
    name = "2.0.9002-4.tar.gz";
    sha256 = "f31a7d505bbe216e1796182f4d488d464baefa4e2aa24b6c96ba5c7538976988";
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
