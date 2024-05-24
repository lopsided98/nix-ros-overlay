
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abseil-cpp, boost, cairo, ceres-solver, cmake, eigen, gflags, git, glog, gtest, lua5, protobuf, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-cartographer";
  version = "2.0.9003-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer-release/archive/release/jazzy/cartographer/2.0.9003-2.tar.gz";
    name = "2.0.9003-2.tar.gz";
    sha256 = "89d95cd71c20fd4c3aab7e27d082b61a1ed3a0939bad1bd4b357acbeab7d10e9";
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
