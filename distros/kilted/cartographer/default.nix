
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abseil-cpp, boost, cairo, ceres-solver, cmake, eigen, gflags, git, glog, gtest, lua5, protobuf, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-cartographer";
  version = "2.0.9004-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer-release/archive/release/kilted/cartographer/2.0.9004-1.tar.gz";
    name = "2.0.9004-1.tar.gz";
    sha256 = "901d4312033419abbfa271aedd70c4977f2030dcaef5f47cfda505c915e3e4e9";
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
